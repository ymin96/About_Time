function loginCheck() {
    var rt;
    $.ajax({
        type: "POST",
        url: "/loginCheck",
        async: false,
        contentType: "application/json; charset=UTF-8",
        success: function (check) {
            if(check === "true")
                rt = true;
            else
                rt = false;
        },
        error: function (request, status, error) {
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    });
    return rt;
}

var calendar;

$(document).ready(function () {
    calendarEvent();
});

function calendarEvent(eventData) {
    var calendarEl = document.getElementById('calendar');
    calendar = new FullCalendar.Calendar(calendarEl, {
        plugins: ['interaction','dayGrid'],
        header: {
            left: "",
            center: "title",
            right: "today prev,next"
        },
        selectable: true,
        editable: true,
        locale: 'kr',
        select:function(dateInfo){
            $("#schedule-view").addClass("hidden");
            $("#schedule-input").removeClass("hidden");
            $("#startDate").val(dateInfo.startStr);
            $("#endDate").val(dateInfo.endStr);
        },
        eventClick: function(info){
            var dateInfo = info.event._def;
            $("#schedule-input").addClass("hidden");
            $("#schedule-view").removeClass("hidden");
            $("#schedule-view .header span").html(dateInfo.title);
            $("#schedule-view .contents p").html("· "+dateInfo.extendedProps.contents);
            $("#view-delete").attr("info-id",dateInfo.defId);
        }
    });
    calendar.render();
}

$("#input-submit").click(function (e) { 
    var schedule={
        allDay: true,
        start: $("#startDate").val(),
        end: $("#endDate").val(),
        title: $("#calendar-title").val(),
        contents: $("#calendar-contents").val()
    }    
    var event = calendar.addEvent(schedule);
    schedule["num"] = parseInt(event._def.defId);
    $.ajax({
        type: "post",
        url: "/member/add/schedule",
        data: JSON.stringify(schedule),
        async: true,
        contentType: "application/json; charset=UTF-8",
        error: function (request, status, error) {
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            event.remove();
        }
    });
    $("#schedule-input").addClass("hidden");
});

$("#input-cancel").click(function (e) { 
    $("#schedule-input").addClass("hidden");
});

$("#view-cancel").click(function (e) { 
    $("#schedule-view").addClass("hidden");    
});

$("#view-delete").click(function (e) { 
    var event = calendar.getEventById($(this).attr("info-id"));
    event.remove();
    $("#schedule-view").addClass("hidden");
});
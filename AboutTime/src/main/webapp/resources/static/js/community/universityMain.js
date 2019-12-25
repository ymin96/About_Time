
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
            //    right: "month,basicWeek,basicDay"
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
            $("#view-delete").attr("info-id",dateInfo.publicId);
        }
    });
    calendar.render();
    var evt = {
        id: 1,
        allDay: true,
        start: "2019-12-24",
        end: "2019-12-25",
        title: "테스팅",
        contents: "내용"
    }
    calendar.addEvent(evt);
}

$("#input-cancel").click(function (e) { 
    $("#schedule-input").addClass("hidden");
});

$("#view-submit").click(function (e) { 
    $("#schedule-view").addClass("hidden");    
});

$("#view-delete").click(function (e) { 
    var event = calendar.getEventById($(this).attr("info-id"));
    event.remove();
    $("#schedule-view").addClass("hidden");
});
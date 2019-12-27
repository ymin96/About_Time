function loginCheck() {
    var rt;
    $.ajax({
        type: "POST",
        url: "/loginCheck",
        async: false,
        contentType: "application/json; charset=UTF-8",
        success: function (check) {
            if (check === "true")
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
    if (loginCheck() === true) {
        $.ajax({
            type: "post",
            url: "/member/get/schedule",
            async: true,
            contentType: "application/json; charset=UTF-8",
            success: function (scheduleList) {
                for (var i = 0; i < scheduleList.length; i++) {
                    var schedule = scheduleList[i];
                    schedule["allDay"] = true;
                    calendar.addEvent(schedule);
                }
            },
            error: function (request, status, error) {
                alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                event.remove();
            }
        });
    }
});

function calendarEvent(eventData) {
    var calendarEl = document.getElementById('calendar');
    calendar = new FullCalendar.Calendar(calendarEl, {
        plugins: ['interaction', 'dayGrid'],
        header: {
            left: "",
            center: "title",
            right: "today prev,next"
        },
        selectable: true,
        editable: true,
        locale: 'kr',
        select: function (dateInfo) {
            if (loginCheck() === true) {
                $("#schedule-view").addClass("hidden");
                $("#schedule-input").removeClass("hidden");
                $("#startDate").val(dateInfo.startStr);
                $("#endDate").val(dateInfo.endStr);
            }else{
                if (confirm("이 기능을 이용하려면 로그인이 필요합니다.\n로그인 화면으로 이동하시겠습니까?") == true)
            document.location.href = "/login";
        else
            return;
            }
        },
        eventClick: function (info) {
            var dateInfo = info.event._def;
            $("#schedule-input").addClass("hidden");
            $("#schedule-view").removeClass("hidden");
            $("#schedule-view .header span").html(dateInfo.title);
            $("#schedule-view .contents p").html("· " + dateInfo.extendedProps.contents);
            $("#view-delete").attr("info-id", dateInfo.publicId);
        }
    });
    calendar.render();
}

$("#input-submit").click(function (e) {
    if (loginCheck() === true) {
        var schedule = {
            allDay: true,
            start: $("#startDate").val(),
            end: $("#endDate").val(),
            title: $("#calendar-title").val(),
            contents: $("#calendar-contents").val()
        }
        $.ajax({
            type: "post",
            url: "/member/add/schedule",
            data: JSON.stringify(schedule),
            async: true,
            contentType: "application/json; charset=UTF-8",
            success: function (id) {
                schedule["allDay"] = true;
                schedule["id"] = id;
                calendar.addEvent(schedule);
            },
            error: function (request, status, error) {
                alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                event.remove();
            }
        });
        $("#schedule-input").addClass("hidden");
    } else {
        if (confirm("로그인이 필요합니다.\n로그인 화면으로 이동하시겠습니까?") == true)
            document.location.href = "/login";
        else
            return;
    }
});

$("#input-cancel").click(function (e) {
    $("#schedule-input").addClass("hidden");
});

$("#view-cancel").click(function (e) {
    $("#schedule-view").addClass("hidden");
});

$("#view-delete").click(function (e) {
    var id = $(this).attr("info-id");
    $.ajax({
        type: "post",
        url: "/member/delete/schedule",
        data: JSON.stringify(id),
        contentType: "application/json; charset=UTF-8",
        success: function (response) {
            var event = calendar.getEventById(id);
            event.remove();
            $("#schedule-view").addClass("hidden");
        },
        error: function (request, status, error) {
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            event.remove();
        }
    });
});
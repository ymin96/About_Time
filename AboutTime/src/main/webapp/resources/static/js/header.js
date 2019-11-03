$(document).ready(function () {
    if(location.pathname === "/timetable/subject/list.do"){
        $("#timetable").removeClass("disable");
        $("#timetable").addClass("active");
    }
    else if(location.pathname === "/carte/list.do"){
        $("#carte").removeClass("disable");
        $("#carte").addClass("active");
    }
});
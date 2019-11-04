$(document).ready(function () {
	var target = location.pathname.split("/")[1]
    if(target === "timetable"){
        $("#timetable").removeClass("disable");
        $("#timetable").addClass("target");
    }
    else if(target === "carte"){
        $("#carte").removeClass("disable");
        $("#carte").addClass("target");
    }
});
function getParameter(param) {
    var returnValue;
    var url = location.href;
    var parameters = (url.slice(url.indexOf('?') + 1, url.length)).split('&');
    for (var i = 0; i < parameters.length; i++) {
        var varName = parameters[i].split('=')[0];
        if (varName.toUpperCase() == param.toUpperCase()) {
            returnValue = parameters[i].split('=')[1];
            return decodeURIComponent(returnValue);
        }
    }
}

function callSearch(arg) {
    location.href = "/community?title=" + $("#title").val();
}

$(document).ready(function () {
    if (getParameter('title') !== undefined) {
        $('.reg-header .collapse').collapse();
    }

    $("#title").keypress(function (event) {
        if (event.keyCode == 13) {
            callSearch($(this).val());
        }
    });
});
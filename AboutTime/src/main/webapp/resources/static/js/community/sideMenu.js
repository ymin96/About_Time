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

$(document).ready(function () {
    if (location.pathname.split('/')[3] === 'list') {
        switch (getParameter('cate')) {
            case undefined:
                $("#all").addClass('active');
                break;
            case 'info':
                $("#info").addClass('active');
                break;
            case 'other':
                $("#other").addClass('active');
                break;
            case 'humor':
                $("#humor").addClass('active');
                break;
            case 'quest':
                $("#quest").addClass('active');
                break;
        }
    }
});
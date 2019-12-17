//url에서 parameter 분리
function divideParameter() {
    var returnValues = new Array();
    var url = location.href;
    if (url.indexOf('?') !== -1) {
        var parameters = (url.slice(url.indexOf('?') + 1, url.length)).split('&');
        for (var i = 0; i < parameters.length; i++) {
            if (parameters[i].indexOf('page') === -1 && parameters[i].indexOf('range') === -1)
                returnValues.push(parameters[i]);
        }
    }
    return returnValues;
}
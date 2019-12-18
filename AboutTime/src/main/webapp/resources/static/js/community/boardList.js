
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

$(document).ready(function () {
    $("#searchList li a").click(function (e) { 
        var caret = ' <span class="caret"></span>';
        var search_type = $(this).html();
        $("#searchType").html(search_type+caret);
        if(search_type === '제목')
            $("#searchType").attr('search','subject');
        else if(search_type === '제목+내용')
            $("#searchType").attr('search','subject_content');
        else if(search_type === '작성자')
            $("#searchType").attr('search','writer');
    });

    $("#searchKey").keypress(function (event) { 
        if(event.keyCode == 13)
            onSearch();
    });
});

//검색버튼 클릭시 url 조합하여 이동
function onSearch() {
    url = location.pathname;
    url += "?searchType=" + $("#searchType").attr('search');
    url += "&searchKey=" + $("#searchKey").val();
    $("#searchKey").val('');
    location.href = url;
}
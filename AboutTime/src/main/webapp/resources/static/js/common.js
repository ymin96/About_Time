function loginCheck(path) {
    $.ajax({
        type: "POST",
        url: "/loginCheck",
        async: false,
        contentType: "application/json; charset=UTF-8",
        success: function (check) {
            if(check === "true")
                location.href = path;
            else{
                if(confirm("로그인이 필요합니다.\n로그인 화면으로 이동하시겠습니까?") == true)
                    document.location.href="/login";
                else
                    return;
            }
        },
        error: function (request, status, error) {
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    });
}

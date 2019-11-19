$(document).ready(function () {
    
    $("#register").click(function (e) {
        var successAlert = "<div class='alert alert-success alert-dismissible' id='alert' role='alert'>" +
        "<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span'aria-hidden='true'>&times;</span></button>" +
        "<strong>성공!</strong>비밀 번호를 수정했습니다." +
        "</div>";

        var failAlert = "<div class='alert alert-danger alert-dismissible' id='alert' role='alert'>" +
        "<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span'aria-hidden='true'>&times;</span></button>" +
        "<strong>실패!</strong>비밀 번호 수정에 실패했습니다." +
        "</div>";

        if ($("#newUpw").val() !== $("#newUpwCheck").val()) {
            alert("두 비밀번호가 일치하지 않습니다.");
        } else {
            $("#alert").remove();
            var msg = {
                currentUpw: $("#currentUpw").val(),
                newUpw: $("#newUpw").val()
            }
            $.ajax({
                type: "POST",
                url: "/member/modifyPW",
                async: false,
                contentType: "application/json; charset=UTF-8",
                data: JSON.stringify(msg),
                success: function (data) {
                    if (data.check === "success") {
                        $("#infoBox").prepend(successAlert);
                    } else {
                        $("#infoBox").prepend(failAlert);
                    }
                },
                error: function (request, status, error) {
                    alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                }
            });
        }
    });
});
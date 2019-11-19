function checkName(check) {
    var uname = $("#uname").val();
    $("#uname-group").removeClass("has-error");
    $("#uname-group").removeClass("has-success");

    if (uname.length < 3) {
        $("#uname-group").addClass("has-error");
    } else {
        var msg = {
            userName: uname
        };
        $.ajax({
            type: "POST",
            url: "/register/uname",
            async: check,
            contentType: "application/json; charset=UTF-8",
            data: JSON.stringify(msg),
            success: function (data) {
                if (data.check === "False") {
                    $("#uname-group").addClass("has-success");
                } else {
                    $("#uname-group").addClass("has-error");
                }
            },
            error: function (request, status, error) {
                alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }
        });
    }
}

$(document).ready(function () {
    checkName(true);
    var successAlert = "<div class='alert alert-success alert-dismissible' id='alert' role='alert'>" +
        "<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span'aria-hidden='true'>&times;</span></button>" +
        "<strong>성공!</strong>회원 정보를 수정했습니다." +
        "</div>";
    var failAlert = "<div class='alert alert-danger alert-dismissible' id='alert' role='alert'>" +
        "<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span'aria-hidden='true'>&times;</span></button>" +
        "<strong>실패!</strong>회원 정보 수정에 실패했습니다." +
        "</div>";

    //닉네임 유효성 검사
    $("#uname").keyup(function (e) {
        checkName(true);
    });

    $("#register").click(function (e) {
        checkName(false);

        if ($("#uname-group").attr("class").indexOf("has-error") !== -1) {
            alert("닉네임을 다시 확인해주세요.");
            return;
        } else if ($("#email").val() == "") {
            alert("이메일을 다시 확인해주세요.");
            return;
        } else {
            $("#alert").remove();
            var msg = {
                uname: $("#uname").val(),
                upw: $("#upw").val(),
                email: $("#email").val()
            }
            $.ajax({
                type: "POST",
                url: "/member/modifyInfo",
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
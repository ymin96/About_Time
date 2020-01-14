function checkID(check) {
    var uid = $("#uid").val();
    $("#uid-group").removeClass("has-error");
    $("#uid-group").removeClass("has-success");

    if (uid.length < 3) {
        $("#uid-group").addClass("has-error");
        $("#help-uid").html("3글자 이상이어야 합니다.");
    }
    else {
        var msg = {
            userID : uid
        };
        $.ajax({
            type: "POST",
            url: "/register/uid",
            async: check,
            contentType: "application/json; charset=UTF-8",
            data: JSON.stringify(msg),
            success: function (data) {
                if (data.check === "False") {
                    $("#uid-group").addClass("has-success");
                    $("#help-uid").html("사용 가능한 아이디 입니다.");
                }
                else {
                    $("#uid-group").addClass("has-error");
                    $("#help-uid").html("이미 사용중인 아이디 입니다.");
                }
            },
            error: function (request, status, error) {
                alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }
        });
    }
}

function checkName(check) {
    var uname = $("#uname").val();
    $("#uname-group").removeClass("has-error");
    $("#uname-group").removeClass("has-success");
    
    if (uname.length < 3) {
        $("#uname-group").addClass("has-error");
        $("#help-uname").html("3글자 이상이어야 합니다.");
    }
    else {
        var msg = {
            userName : uname
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
                    $("#help-uname").html("사용 가능한 별명 입니다.");
                }
                else {
                    $("#uname-group").addClass("has-error");
                    $("#help-uname").html("이미 사용중인 별명 입니다.");
                }
            },
            error: function (request, status, error) {
                alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }
        });
    }
}

$(document).ready(function () {
    //ID 유효성 검사
    $("#uid").keyup(function (e) {
        checkID(true);
    });

    //닉네임 유효성 검사
    $("#uname").keyup(function (e) {
        checkName(true);
    });

    //비밀번호 유효성 검사
    $("#upw").keyup(function (e) {
        var upw = $(this).val();
        $("#upw-group").removeClass("has-error");
        if (upw.length < 6) {
            $("#upw-group").addClass("has-error");
            $("#help-upw").html("6글자 이상 이어야 합니다.");
        }
        else{
            $("#help-upw").html("");
        }
    });

    //가입하기 버튼 클릭
    $("#register").click(function (e) {
        var member = {
            uid: $("#uid").val(),
            uname: $("#uname").val(),
            upw: $("#upw").val(),
            upw_check: $("#upw-check").val(),
            email: $("#email").val()
        };
        checkID(false);
        checkName(false);
        if ($("#uid-group").attr("class").indexOf("has-error") !== -1) {
            alert("ID를 확인해주세요.");
            return;
        }
        else if ($("#uname-group").attr("class").indexOf("has-error") !== -1) {
            alert("별명을 확인해주세요.");
            return;
        }
        else if ($("#upw-group").attr("class").indexOf("has-error") !== -1) {
            alert("비밀번호를 확인해주세요.");
            return;
        }
        else if (member.upw !== member.upw_check) {
            alert("비밀번호가 일치하지 않습니다.");
            return;
        }
        else if ($("#email").val() === ""){
            alert("이메일을 확인해 주세요.");
            return;
        }
        else{
            $.ajax({
                type: "POST",
                url: "/register",
                data: JSON.stringify(member),
                async: false,
                contentType: "application/json; charset=UTF-8",
                success: function (response) {
                    location.href="/login";
                },
                error: function (request, status, error) {
                    alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                }
            });
        }
    });
});
$(document).ready(function () {
    $("#uid").keyup(function (e) {
        var uid = $(this).val();
        $("#uid-group").removeClass("has-error");
        $("#uid-group").removeClass("has-success");
        if($("#uid").next().attr("id") === "help-uid"){
            $("#uid").next().remove();
        }

        if (uid.length < 3) {
            $("#uid-group").addClass("has-error");
            $("#uid").after('<span id="help-uid" class="help-block">3글자 이상이어야합니다.</span>');
        }
        else {
            var msg = {
                userid : uid
            }
            $.ajax({
                type: "POST",
                url: "/register/uid",
                contentType : "application/json; charset=UTF-8",
                data: JSON.stringify(msg),
                success: function (data) {
                    console.log(data)
                },
                error:function(request,status,error){
    		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    		    }
            });
        }
    });
});
function recomment(arg, grp, writer) {
    var editBox = '<div class="recommentEdit">' +
        '<div class="input-group">' +
        '<textarea class="form-control" rows="2" style="resize: none;"></textarea>' +
        '<div class="input-group-addon" style="font-weight: bold;"><a href="javascript:void(0);" onclick="recommentRegister(this,'+grp+','+writer+')">등록</a></div>' +
        '</div>' +
        '</div>';

    $("div").remove(".recommentEdit");
    $(arg).parent().parent().append(editBox);
}

function recommentRegister(arg, group, writer){
    console.log(group);
    var num = location.pathname.split('/')[4];
    var contents = $(arg).parent().prev().val();
    var data = {
        num: num,
        contents: contents,
        grp: group,
        target: writer
    };

    $.ajax({
        type: "POST",
        url: "/community/board/recomment",
        async: false,
        data: JSON.stringify(data),
        contentType: "application/json; charset=UTF-8",
        success: function (commentList) {
            $("div").remove(".comment");
            $('.comment-header h5').text('댓글('+commentList.length+')');
            for (var i = 0; i < commentList.length; i++) {
                var comment = commentList[i];
                var inHtml = '<div class="comment '+(comment.target != null? 'recomment':'')+'">' +
                    '<p class="comment-main">' +
                    comment.contents +
                    '<button onclick="recomment(this,'+comment.grp+')">' +
                    '<span class="glyphicon glyphicon-share-alt recomment-button" aria-hidden="true">답글</span>' +
                    '</button>' +
                    '</p>' +
                    '<p class="comment-sub">' +
                    comment.writer + '[ <span>' + comment.regDate + '</span> ]' +
                    '</p>' +
                    '</div>';
                $(".comment-box").append(inHtml);
            }
        },
        error: function (request, status, error) {
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    });
}

function commentRegister(arg) {
    var num = location.pathname.split('/')[4];
    var contents = $(arg).parent().prev().val();
    var data = {
        num: num,
        contents: contents
    };

    $.ajax({
        type: "POST",
        url: "/community/board/comment",
        async: false,
        data: JSON.stringify(data),
        contentType: "application/json; charset=UTF-8",
        success: function (commentList) {
            $("div").remove(".comment");
            $('.comment-header h5').text('댓글('+commentList.length+')');
            for (var i = 0; i < commentList.length; i++) {
                var comment = commentList[i];
                var inHtml = '<div class="comment '+(comment.target != null? 'recomment':'')+'">' +
                    '<p class="comment-main">' +
                    comment.contents +
                    '<button onclick="recomment(this,'+comment.grp+')">' +
                    '<span class="glyphicon glyphicon-share-alt recomment-button" aria-hidden="true">답글</span>' +
                    '</button>' +
                    '</p>' +
                    '<p class="comment-sub">' +
                    comment.writer + '[ <span>' + comment.regDate + '</span> ]' +
                    '</p>' +
                    '</div>';
                $(".comment-box").append(inHtml);
            }
        },
        error: function (request, status, error) {
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    });
}

$(document).ready(function () {
    $("img").css("max-width", $(".contents").css("width"));
});

$(window).resize(function () {
    $("img").css("max-width", $(".contents").css("width"));
});
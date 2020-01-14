//대댓글 창 보이기
function recomment(arg, grp, writer) {
    var editBox = '<div class="recommentEdit">' +
        '<div class="input-group">' +
        '<textarea id="recommentArea" class="form-control" rows="2" style="resize: none;"></textarea>' +
        '<div class="input-group-addon" style="font-weight: bold;"><a id="recommentReg" href="javascript:void(0);" onclick="recommentRegister(this,' + grp + ',' + "'" + writer + "'" + ')">등록</a></div>' +
        '</div>' +
        '</div>';

    $("div").remove(".recommentEdit");
    $(arg).parent().parent().append(editBox);
}

//대댓글 등록
function recommentRegister(arg, group, writer) {
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
        success: function (resultMap) {
            var check = resultMap.check;
            if (check === "false") {
                if (confirm("로그인이 필요합니다.\n로그인 화면으로 이동하시겠습니까?") == true)
                    document.location.href = "/login";
                else
                    return;
            } else {
                var commentList = resultMap.commentList;
                $("div").remove(".comment");
                $('.comment-header h5').text('댓글(' + commentList.length + ')');
                for (var i = 0; i < commentList.length; i++) {
                    var comment = commentList[i];
                    insertHtml(comment);
                }
            }
        },
        error: function (request, status, error) {
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    });
}

//댓글 등록
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
        success: function (resultMap) {
            var check = resultMap.check;
            if (check === "false") {
                if (confirm("로그인이 필요합니다.\n로그인 화면으로 이동하시겠습니까?") == true)
                    document.location.href = "/login";
                else
                    return;
            } else {
                var commentList = resultMap.commentList;
                $("div").remove(".comment");
                $('.comment-header h5').text('댓글(' + commentList.length + ')');
                for (var i = 0; i < commentList.length; i++) {
                    var comment = commentList[i];
                    insertHtml(comment);
                }
                $("#commentArea").val('');
            }
        },
        error: function (request, status, error) {
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    });
}

//댓글 삭제
function removeComment(arg ,num, writer) {
    var board_num = location.pathname.split('/')[4];
    var data = {
        num : num,
        board_num : board_num,
        writer : writer
    };
    $.ajax({
        type: "POST",
        url: "/community/board/removeComment",
        async: false,
        data: JSON.stringify(data),
        contentType: "application/json; charset=UTF-8",
        success: function (check) {
            if (check === "false") {
                alert("댓글은 작성자 본인만 삭제 할 수 있습니다.");
            } else {
                $(arg).parent().prev().html('[삭제된 댓글 입니다.]');
            }
        },
        error: function (request, status, error) {
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    });
}

//댓글 등록 html
function insertHtml(comment) {
    var inHtml = '<div class="comment ' + (comment.target != null ? 'recomment' : '') + '">' +
        (comment.target != null ? '<p class="target"><span class="glyphicon glyphicon-chevron-up" aria-hidden="true">' + comment.target + '</span></p>' : '') +
        '<p class="comment-main">' +
        comment.contents +
        '<button onclick="recomment(this,' + comment.grp + ',' + "'" + comment.writer + "'" + ')">' +
        '<span class="glyphicon glyphicon-share-alt recomment-button" aria-hidden="true">답글</span>' +
        '</button>' +
        '</p>' +
        '<p class="comment-sub">' +
        comment.writer + '[ <span>' + comment.simpleRegDate + '</span> ]' + 
        '<a href="javascript:void(0);" onclick="removeComment(this,'+comment.num+','+"'"+comment.writer+"'"+')">삭제</a>' +
        '</p>' +
        '</div>';
    $(".comment-box").append(inHtml);
}

$(document).ready(function () {
    $("img").css("max-width", $(".contents").css("width"));
    //글 번호
    var num = parseInt(location.pathname.split('/')[4]);

    //댓글 로딩
    $.ajax({
        type: "GET",
        url: "/community/board/comment/" + num,
        async: false,
        contentType: "application/json; charset=UTF-8",
        success: function (commentList) {
            $("div").remove(".comment");
            $('.comment-header h5').text('댓글(' + commentList.length + ')');
            for (var i = 0; i < commentList.length; i++) {
                var comment = commentList[i];
                insertHtml(comment);
            }
        },
        error: function (request, status, error) {
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    });

    
});

//이미지 사이즈 조정
$(window).resize(function () {
    $("img").css("max-width", $(".contents").css("width"));
});


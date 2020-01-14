<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<body>
	<div class="board_edit">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
					<div class="content-box">
						<div class="reg-header">
							<h1>게시글 수정</h1>
						</div>
						<form class="form-horizontal">
							<div class="form-group">
								<label for="inputTitle"
									class="col-sm-1 col-md-1 col-xs-4 control-label">제목</label>
								<div class="col-sm-10 col-md-10 col-xs-12">
									<input type="text" class="form-control" id="inputTitle">
								</div>
							</div>
							<div class="form-group">
								<label for="inputUniversity"
									class="col-sm-1 col-md-1 col-xs-4 control-label">학교</label>
								<div class="col-sm-4 col-md-4 col-xs-12">
									<input type="text" class="form-control" id="inputUniversity"
										value="${board.university}" readonly>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-1 col-md-1 col-xs-4 control-label">분류</label>
								<div class="col-md-11 col-sm-11 col-xs-12">
									<label class="radio-inline"> <input type="radio"
										name="radioOptions" id="radio1" value="정보"> 정보
									</label> <label class="radio-inline"> <input type="radio"
										name="radioOptions" id="radio2" value="잡담"> 잡담
									</label> <label class="radio-inline"> <input type="radio"
										name="radioOptions" id="radio3" value="유머"> 유머
									</label> <label class="radio-inline"> <input type="radio"
										name="radioOptions" id="radio3" value="질문"> 질문
									</label>
								</div>
							</div>
							<div class="col-md-12 col-sm-12 col-xs-12">
								<textarea id="summernote" name="editordata"></textarea>
							</div>
							<div class="form-group" style="margin-right: 10px;">
								<div
									class="col-md-offset-10 col-md-1 col-sm-offset-10 col-sm-1 col-xs-3 col-xs-offset-6">
									<a href="${prev}" class="btn btn-default" id="cancel">취소</a>
								</div>
								<div class="col-md-1 col-sm-1 col-xs-3">
									<a class="btn btn-primary" id="register">등록</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="/resources/note/dist/summernote.js"></script>
<script>
$(document).ready(function () {
    $('#summernote').summernote({
        height: 600, // set editor height
        minHeight: null, // set minimum height of editor
        maxHeight: null, // set maximum height of editor
        callbacks:{
            onImageUpload: function(files, editor, welEditable){
                for(var i = files.length - 1 ;i >=0;i--){
                    sendFile(files[i], this);
                }
            }
        }
	});
	
	$("#inputTitle").val("${board.title}");
	$('input:radio[name=radioOptions]:input[value="${board.category}"]').attr("checked", true);
	$('#summernote').summernote('pasteHTML', "${board.contents}");

	$("#register").click(function (e) { 
        var board = {
            title : $("#inputTitle").val(),
            category : $(":radio[name='radioOptions']:checked").val(),
            contents : $('#summernote').summernote('code'),
            university : $('#inputUniversity').val()
        };

        if(board.title == null){
            alert("제목을 확인해주세요.");
        }
        else if(board.category == null){
            alert("분류를 선택해주세요.");
        }
        else if(board.contents == null){
            alert("내용을 확인해주세요.");
        }
        else{
            $.ajax({
                type: "POST",
                url: "/community/"+"${board.university}"+"/update/"+"${board.num}",
                async: false,
                data: JSON.stringify(board),
                contentType : "application/json; charset=UTF-8",
                success:function(){
					location.href = "/community/"+"${board.university}"+"/read/"+"${board.num}";
				},
				error:function(request,status,error){
			        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			    }
            });
        }
        
    });
});
function sendFile(file, el) {
    var form_data = new FormData();
    form_data.append('file', file);
    $.ajax({
        type: "POST",
        url: "/image",
        data: form_data,
        cache: false,
        contentType: false,
        enctype: 'multipart/form-data',
        processData: false,
        success: function (url) {
            $(el).summernote('editor.insertImage', url);
        }
    });
}
</script>
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
                url: "/community/"+board.university+"/edit",
                async: false,
                data: JSON.stringify(board),
                contentType : "application/json; charset=UTF-8",
                success:function(){
					location.href = "/community/"+board.university+"/list";
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
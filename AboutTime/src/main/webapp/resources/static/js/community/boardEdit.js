$(document).ready(function () {
    $('#summernote').summernote({
        height: 600, // set editor height
        minHeight: null, // set minimum height of editor
        maxHeight: null // set maximum height of editor
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
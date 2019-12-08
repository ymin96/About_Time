function recomment(arg) {
    var editBox = '<div class="recommentEdit">' +
        '<div class="input-group">' +
        '<textarea class="form-control" rows="2" style="resize: none;"></textarea>' +
        '<div class="input-group-addon" style="font-weight: bold;"><a href="#">등록</a></div>' +
        '</div>' +
        '</div>';
    
    $("div").remove(".recommentEdit");
    $(arg).parent().parent().append(editBox);
}
$("#add-subject").click(function (e) {
    var standard = $("#standard");
    standard = '<div class="form-group copy">' + standard[0].innerHTML + '</div>';
    $("#calculator-form").append(standard);
});

$("#init-form").click(function (e) {
    $("#result-box").addClass("hidden");
    $(".copy").remove();
    var standard = $("#standard");
    standard = '<div class="form-group copy">' + standard[0].innerHTML + '</div>';
    for (var i = 0; i < 6; i++) {
        $("#calculator-form").append(standard);
    }
    scroll(0, 0);
});

$("#result").click(function (e) {
    var worst = $("input[id = 'worst']").prop("checked");
    var allCredit = 0;
    var majorCredit = 0;
    var allScore = 0;
    var majorScore = 0;
    $(".copy").each(function (index, item) {
        var innerElement = $(item);
        var score = innerElement.find(".score option:selected").val();
        var credit = innerElement.find(".credit option:selected").val();
        var check = innerElement.find("input[class = 'major']").prop("checked");
        if (score !== "null" && credit !== "null") {
            score = parseFloat(score);
            credit = parseInt(credit);
            //만약 f학점 포함이라면 모든 점수를 추가
            if (worst == true) {
                allScore += score * credit;
                allCredit += credit;
            } else {    //f학점 미포함이라면 f학점이 아닌 점수만 추가
                if (score !== 0) {
                    allScore += score * credit;
                    allCredit += credit;
                }
            }
            //이 과목이 전공과목이라면
            if (check === true) {
                //f학점 포함이라면 모든 점수를 추가
                if (worst == true) {
                    majorScore += score * credit;
                    majorCredit += credit;
                } else {    //f학점 미포함이라면 f학점이 아닌 점수만 추가
                    if (score !== 0) {
                        majorScore += score * credit;
                        majorCredit += credit;
                    }
                }
            }
        }
    });
    $("#allAve").html((allScore / allCredit).toFixed(2));
    $("#majorAve").html((majorScore / majorCredit).toFixed(2));
    $("#allCredit").html(allCredit);
    $("#majorCredit").html(majorCredit);
    $("#result-box").removeClass("hidden");
});
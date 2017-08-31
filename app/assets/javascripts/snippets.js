$(function() {

    setInterval(function () {
        $.get("http://localhost:3000/pi.json", function (data) {
            $("#q").text(data.question)
            $("#a").text(data.answer)
            console.log(data);
        });
    }, 5000);

});
$(function() {

    function launchFullScreen(element) {
      if(element.requestFullScreen) {
        element.requestFullScreen();
      } else if(element.mozRequestFullScreen) {
        element.mozRequestFullScreen();
      } else if(element.webkitRequestFullScreen) {
        element.webkitRequestFullScreen();
      }
    }

    setInterval(function () {
        $.get("http://localhost:3000/pi.json", function (data) {
            $("#q").text(data.question)
            $("#a").text(data.answer)
            console.log(data);
        });
    }, 3000);

    $("#play-link").click(function (element) {
        launchFullScreen(document.documentElement);
    })

    

});
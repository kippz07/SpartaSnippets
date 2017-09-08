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
        // if(window.location.href == "https://spartasnippets.herokuapp.com/pi") {
        if(window.location.href == "http://localhost:3000/pi") {
            // $.get("https://spartasnippets.herokuapp.com/pi.json", function (data) {
            $.get("pi.json", function (data) {
                $("#q").text(data.question);
                $("#a").text(data.answer);
            });
        }    
    }, 3000);

    $("#fullscreen-button").click(function (element) {
        launchFullScreen(document.documentElement);
        $("header").slideUp();
        $("#fullscreen-button").slideUp();
    })

    $(document).bind('webkitfullscreenchange mozfullscreenchange fullscreenchange', function(e) {
        var state = document.fullScreen || document.mozFullScreen || document.webkitIsFullScreen;
        var event = state ? 'FullscreenOn' : 'FullscreenOff';

        // Now do something interesting
        if(event == 'FullscreenOff'){
            $("header").slideDown();
            $("#fullscreen-button").slideDown();
        }  
    });

    // setInterval(function () {
    //     $("#submit-new").submit();
    // }, 2000);

});
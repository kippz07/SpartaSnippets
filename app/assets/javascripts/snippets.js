$(function() {

    var $arrayLength = $('#array-length');
    var length = $arrayLength.html();
    var $image = $('.bg-img');
    var $body = $('body');

    setInterval(function () {
        if(window.location.href == "https://spartasnippets.herokuapp.com/pi") {
        // if(window.location.href == 'http://localhost:3000/pi') {
            $.get("https://spartasnippets.herokuapp.com/pi.json", function (data) {
            // $.get('pi.json', function (data) {
                $('#q').text(data.question);
                $('#a').text(data.answer);
            });
        }
    }, 3000);

    if(window.location.href == 'https://spartasnippets.herokuapp.com/pi') {
    // if(window.location.href == 'http://localhost:3000/pi') {
        $body.addClass('bg-img');
    } else {
        $body.removeClass('bg-img');
    }

    $('#fullscreen-button').click(function (element) {
        launchFullScreen(document.documentElement);
    })

    $(document).bind('webkitfullscreenchange mozfullscreenchange fullscreenchange', function(e) {
        var state = document.fullScreen || document.mozFullScreen || document.webkitIsFullScreen;
        var event = state ? 'FullscreenOn' : 'FullscreenOff';

        if(event == 'FullscreenOff') {
            $('header').slideDown();
            $('#fullscreen-button').slideDown();
        }  
    });

    function launchFullScreen (element) {
        if(element.requestFullScreen) {
        element.requestFullScreen();
        } else if(element.mozRequestFullScreen) {
        element.mozRequestFullScreen();
        } else if(element.webkitRequestFullScreen) {
        element.webkitRequestFullScreen();
        }
        $('header').slideUp();
        $('#fullscreen-button').slideUp();
        $image.css('padding-bottom', '20px');
        setTimeout(function () {
            $image.css('padding-bottom', '0px');
        }, 20);
    }
});
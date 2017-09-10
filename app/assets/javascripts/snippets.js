$(function() {

    var arrayLength = $("#array-length");
    var length = arrayLength.html();

    setInterval(function () {
        if(window.location.href == "https://spartasnippets.herokuapp.com/pi") {
        // if(window.location.href == "http://localhost:3000/pi") {
            $.get("https://spartasnippets.herokuapp.com/pi.json", function (data) {
            // $.get("pi.json", function (data) {
                $("#q").text(data.question);
                $("#a").text(data.answer);
            });
            console.log(length);
            var curLength = arrayLength.html();
            length = checkForNewSnippets(length, curLength);
            console.log(curLength);
            console.log(length);
        } 
    }, 3000);

    $("#fullscreen-button").click(function (element) {
        launchFullScreen(document.documentElement);
        
    })

    $(document).bind('webkitfullscreenchange mozfullscreenchange fullscreenchange', function(e) {
        var state = document.fullScreen || document.mozFullScreen || document.webkitIsFullScreen;
        var event = state ? 'FullscreenOn' : 'FullscreenOff';

        if(event == 'FullscreenOff') {
            $("header").slideDown();
            $("#fullscreen-button").slideDown();
        }  
    });

    function checkForNewSnippets (oldLength, curLength) {
        if (curLength != oldLength) {
            window.location.reload();
            launchFullScreen(document.documentElement);
            console.log("releaded");
        } 
        return curLength;
    }

    function launchFullScreen (element) {
        if(element.requestFullScreen) {
        element.requestFullScreen();
        } else if(element.mozRequestFullScreen) {
        element.mozRequestFullScreen();
        } else if(element.webkitRequestFullScreen) {
        element.webkitRequestFullScreen();
        }
        $("header").slideUp();
        $("#fullscreen-button").slideUp();
    }

});
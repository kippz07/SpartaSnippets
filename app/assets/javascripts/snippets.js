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

    // setInterval(function () {
    //     // $.get("https://spartasnippets.herokuapp.com/pi.json", function (data) {
    //     $.get("pi.json", function (data) {
    //         $("#q").text(data.question);
    //         $("#a").text(data.answer);
    //         console.log(data);
    //     });
    // }, 3000);

    // $("#play-link").click(function (element) {
    //     launchFullScreen(document.documentElement);
    // })

    setInterval(function () {
        $.get("http://localhost:3000/message", function (data) {
            array = data.split("\n");
            $("#ques").text(array[0]);
            $("#ans").text(array[1]);
            console.log(array[0])
            console.log(array[1])
            $("#submit-snip").trigger('click');
        });
    }, 3000)
    
    

});
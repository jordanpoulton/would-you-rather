// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require turbolinks
//= require_tree .

$(document).ready(function(){
  // $('.facebook_signup_form iframe').load(function(){
  //   if ($('.facebook_signup_form iframe').attr('src') == "/users/auth/facebook") {
  //     console.log("frame loaded")
  //   }
  //   else {
  //   $('.facebook_signup_form').modal('hide')
  //   };//Hide NOT WORKING!!
  // });

  //Make the 'ask a question' option a popup
  $("#ask_question a").on('click', function(){
    $(".ask_question_form").modal({
      backdrop: true
    });
    return false
  })

  //Make Facebook signup/in a popup
  // $("#facebook_signup_link a").on('click', function(){
  //   console.log("button clicked")
  //   $(".facebook_signup_form").modal({
  //     backdrop: true
  //   });
  //   return false
  // })

  $(".option_true input").popover({
    trigger: 'focus',
    placement: top
  });

//from http://developers.facebook.com/docs/reference/dialogs/feed/

  // FB.init({appId: "147928815382215", status: true, cookie: true}); //Not needed - FB already initialised
  function postToFeed() {
    var object = {
      method: 'feed',
      redirect_uri: 'http://localhost:3000',
      link: 'http://localhost:3000', //Link that FB will display on post
      picture: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS8oQ27KgtLzeSTQUa1DgZz8D-xW_yN3Ah7ADvVSPOil75abme7zQ",
      name: 'lolcano',
      caption: 'Testy McTesterton',
      description: 'Testing like a MoFo'
    }

    function callback(response){
      $("#msg").innerHTML = "Post ID: " + response["post_id"];
    }

    FB.ui(object, callback)
  };

  $(".post_to_fb").on('click', function(){
    postToFeed();
    return false;
  })


  $(".submit_answer_true").on('click', function(){
    // $(//Form to post, comment/share on fbook).modal({
    //   backdrop: true
    // });
    return false
  })
  $(".submit_answer_false").on('click', function(){
    // $(//Form to post, comment/share on fbook).modal({
    //   backdrop: true
    // });
    return false
  });


});


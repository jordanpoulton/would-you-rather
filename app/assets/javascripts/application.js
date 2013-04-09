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
//= require_tree .

$(document).ready(function(){
  //Make the 'ask a question' option a popup
  $("#ask_question a").on('click', function(){
    $(".ask_question_form").modal({
      backdrop: true
    });
    return false
  })

  $(".option_true input").popover({
    trigger: 'focus',
    placement: top
  });


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
  })

});



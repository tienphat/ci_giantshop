$(function(){
  $("#btnSignup").click(function () {
      var password = $("#pass").val();
      var confirmPassword = $("#repass").val();
      if (password != confirmPassword) {
          alert("Passwords do not match.");
          return false;
      }
      return true;
  });

  //Show login-form
  $(".sign_in").click(function(){
    $(".login-form").slideToggle();
  });
  $(".btnLogin").click(function(){
    $(".login-form").slideUp();
  });
  $(".sign_up").click(function(){
    $(".login-form").slideUp();
  });
  //Fixed-menu
  var nav = $('.mainmenu');
	$(window).scroll(function () {
		if ($(this).scrollTop() > 133) {
			nav.addClass("fixed-menu");
		} else {
			nav.removeClass("fixed-menu");
		}
	});
  //active menu
  function stripTrailingSlash(str) {
    if(str.substr(-1) == '/') {
      return str.substr(0, str.length - 1);
    }
    return str;
  }

  var url = window.location.pathname;
  var activePage = stripTrailingSlash(url);

  $('ul.nav.target-active li a').each(function(){
    var currentPage = stripTrailingSlash($(this).attr('href'));

    if (activePage == currentPage) {
      $(this).parent().addClass('active');
    }
  });
  // $('ul.nav.target-active li').click(function () {
  //      $('ul.nav.target-active li').each(function () {
  //          $(this).removeClass("active");
  //      });
  //      $(this).addClass('active');
  //  });



});

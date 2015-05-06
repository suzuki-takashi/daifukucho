

/* global $, dai */

dai.shell = (function () {
  var
    toggleMenu,
    toggleMessage,
    initModule;

  toggleMenu = function () {

  };

  toggleMessage = function () {

  };

  initModule = function ($container) {
    $container.find("#dai-head-button_menu").click(function () {
      $container.find(".dai-menu").animate({width: 'toggle'}, 400);
    });

    $container.find("#dai-head-button_message").click(function () {
      $container.find(".dai-message").animate({height: 'toggle'}, 400);
    });
  };

  return {
    initModule: initModule
  }
}());

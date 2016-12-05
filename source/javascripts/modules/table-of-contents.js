(function($, Modules) {
  'use strict';

  Modules.TableOfContents = function () {
    var $html = $('html');

    this.start = function ($element) {
      var $closeLink = $element.find('.js-toc-close');
      var $tocList = $element.find('.js-toc-list');

      // Need delegated handler for show link as sticky polyfill recreates element
      $html.on('click.toc', '.js-toc-show', preventingScrolling(openNavigation));
      $closeLink.on('click.toc', preventingScrolling(closeNavigation));
      $tocList.on('click.toc', 'a', closeNavigation);
    };

    function openNavigation() {
      $html.addClass('toc-open');
    }

    function closeNavigation() {
      $html.removeClass('toc-open');
    }

    function preventingScrolling(callback) {
      return function (event) {
        event.preventDefault();
        callback();
      }
    }
  };
})(jQuery, window.GOVUK.Modules);

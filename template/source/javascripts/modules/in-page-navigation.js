(function($, Modules) {
  'use strict';

  Modules.InPageNavigation = function InPageNavigation() {
    var $tocPane;
    var $contentPane;
    var $tocItems;

    var animationFrameRequested = false;

    this.start = function start($element) {
      if (!Modernizr.history) {
        return;
      }

      $tocPane = $element.find('.app-pane__toc');
      $contentPane = $element.find('.app-pane__content');
      $tocItems = $tocPane.find('a');

      $contentPane.on('scroll', function () {
        withAnimationFrame(handleScrollEvent);
      });

      // Popstate is triggered when using the back button to navigate 'within'
      // the page, i.e. changing the anchor part of the URL.
      $(window).on('popstate', function (event) {
        restoreScrollPosition(event.originalEvent.state);
      });

      // Restore state when e.g. using the back button to return to this page
      restoreScrollPosition(history.state);
    };

    function restoreScrollPosition(state) {
      if (state && state.scrollTop) {
        $contentPane.scrollTop(state.scrollTop);
      }
    }

    function handleScrollEvent() {
      var activeTocItem = tocItemForFirstElementInView();

      storeCurrentPositionInHistoryApi(activeTocItem);
      highlightActiveItemInToc(activeTocItem);
    }

    function storeCurrentPositionInHistoryApi(activeTocItem) {
      history.replaceState(
        { scrollTop: $contentPane.scrollTop() },
        "",
        activeTocItem.attr('href')
      );
    }

    function highlightActiveItemInToc(activeTocItem) {
      $tocItems.removeClass('toc-link--in-view');

      if (activeTocItem) {
        activeTocItem.addClass('toc-link--in-view');
      }
    }

    function tocItemForFirstElementInView() {
      var target = null;

      $($tocItems.get().reverse()).each(function checkIfInView(index) {
        if (target) {
          return;
        }

        var $this = $(this);
        var $heading = $contentPane.find($this.attr('href'));

        if ($heading.position().top <= 0) {
          target = $this;
        }
      });

      return target;
    }

    function withAnimationFrame(callback) {
      if (!animationFrameRequested) {
        requestAnimationFrame(function () {
          animationFrameRequested = false;
          callback();
        });
      }

      animationFrameRequested = true;
    }
  };
})(jQuery, window.GOVUK.Modules);

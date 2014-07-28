//= require enquire/dist/enquire.js
//= require jquery-modal/jquery.modal.min.js
//= require ragadjust/js/ragadjust.js
//= require_tree .

// Use an object literal pattern to help organize code
// http://rmurphey.com/blog/2009/10/15/using-objects-to-organize-your-code/
(function($) {
  'use strict';
  
  // ================================================================
  // APP_NAME behaviors
  // ================================================================

  var APP_NAME = { // namespace setup

    // Settings
    // -> global vars go here
    // ---------------------------------------------------------------
    config : { 
      
    },

    // Setup
    // ---------------------------------------------------------------
    init : function(config) {
      $.extend(APP_NAME.config, config);

      // fall back to jquery.animate() if CSS transitions are not supported
      // -> for transit.js: https://github.com/rstacruz/jquery.transit
      // if (!$.support.transition) {
      //   $.fn.transition = $.fn.animate;
      // }

      //----- Widon't & Best Ampersand -------------------------------------
      // -> http://justinhileman.info/article/a-jquery-widont-snippet/
      // -> http://justinhileman.info/article/more-jquery-typography/

      jQuery(function($) {
        $('h1, h2, h3, h4, h5, h6, p, li, dt, dd, a, span, figcaption').each(function() {
          $(this).html(
            $(this).html()
              // for any $amp; element, wrap in a span with class ".amp" 
              .replace(/&amp;/g,'<span class="amp">&amp;</span>')
              // add a non-breaking space between the last two words in selected elements
              // longer words are allowed to be widows
              .replace(/\s([^\s>]{0,12})\s*$/,'&nbsp;$1')
          );
        });
      });

    },

    // Methods
    // ---------------------------------------------------------------

    
  };

  
  $(window).load(function() {
    APP_NAME.init();
  });
})(jQuery);

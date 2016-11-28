describe('Anchored headings', function() {
  'use strict';

  var module;
  var $element;
  var $heading;

  beforeEach(function() {
    module = new GOVUK.Modules.AnchoredHeadings();
    $element = $('<div data-module="anchored-headings">\
      <h1 id="caas">Cake as a service</h1>\
    </div>');
    $heading = $element.find('h1');
    module.start($element);
  });

  it('adds an anchor to headings in the target element', function() {
    expect($heading.find('a').length).toEqual(1)
  });

  it('sets the href of the anchor to the heading\'s id attribute', function() {
    expect($heading.find('a').attr('href')).toEqual('#' + $heading.attr('id'))
  });
});

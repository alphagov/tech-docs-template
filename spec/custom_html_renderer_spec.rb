require 'spec_helper'
require_relative '../lib/custom_html_renderer'

RSpec.describe CustomHTMLRenderer do
  describe '#header' do
    let(:header) { subject.header('bananas', 1) }
    let(:header_with_inline_html) { subject.header('<code>hello</code> world', 1) }
    let(:header_with_html_entiites) { subject.header('apples &amp; pears', 1) }

    it 'includes a heading tag with an anchor-heading class' do
      expect(header).to have_tag('h1.anchored-heading')
    end

    it 'includes an anchor tag' do
      expect(header).to have_tag('a.anchored-heading__icon')
    end

    # The following tests exist to match Redcarpet's default anchor fragment
    # generation logic, which you can see here:
    # https://github.com/vmg/redcarpet/blob/master/ext/redcarpet/html.c#L274
    context 'given text with inline HTML' do
      it 'removes inline HTML from the anchor fragment' do
        expect(header_with_inline_html).to include('#hello-world')
      end
    end

    context 'given text with HTML entities' do
      it 'removes HTML entities from the anchor fragment' do
        expect(header_with_html_entiites).to include('#apples-pears')
      end
    end
  end
end

require 'spec_helper'

describe TableOfContents::HeadingsBuilder do
  it 'builds a collection of headings from HTML' do
    html = %{
      <h1 id="apples">Apples</h1>
      <p>A fruit</p>
      <h2 id="apple-recipes">Apple recipes</h2>
      <p>Get some apples..</p>
      <h1 id="pears">Pears</h1>
    }

    headings = described_class.new(html).headings

    expect(headings).to eq([
      TableOfContents::Heading.new(element_name: 'h1', text: 'Apples', attributes: {'id' => 'apples'}),
      TableOfContents::Heading.new(element_name: 'h2', text: 'Apple recipes', attributes: {'id' => 'apple-recipes'}),
      TableOfContents::Heading.new(element_name: 'h1', text: 'Pears', attributes: {'id' => 'pears'}),
    ])
  end
end

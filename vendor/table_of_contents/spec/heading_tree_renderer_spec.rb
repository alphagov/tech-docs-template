require 'spec_helper'

describe TableOfContents::HeadingTreeRenderer, '#html' do
  it 'returns a nested unordered list of links to headings' do
    tree = TableOfContents::HeadingTree.new(
      heading: nil,
      children: [
        TableOfContents::HeadingTree.new(
          heading: TableOfContents::Heading.new(element_name: 'h1', text: 'Apples', attributes: {'id' => 'apples'}),
          children: [
            TableOfContents::HeadingTree.new(
              heading: TableOfContents::Heading.new(element_name: 'h2', text: 'Apple recipes', attributes: {'id' => 'apple-recipes'})
            )
          ]
        ),
        TableOfContents::HeadingTree.new(
          heading: TableOfContents::Heading.new(element_name: 'h1', text: 'Oranges', attributes: {'id' => 'oranges'}),
        )
      ]
    )

    html = described_class.new(tree).html

    expected_html = %{
<ul>
  <li>
    <a href="#apples">Apples</a>
    <ul>
      <li>
        <a href="#apple-recipes">Apple recipes</a>
      </li>
    </ul>
  </li>
  <li>
    <a href="#oranges">Oranges</a>
  </li>
</ul>
}

    expect(html.strip).to eq(expected_html.strip)
  end
end

require 'spec_helper'

describe TableOfContents::HeadingTreeBuilder do
  it 'creates a tree of headings depending on their importance' do
    headings = [
      TableOfContents::Heading.new(element_name: 'h1', text: 'Apples', attributes: {'id' => 'apples'}),
      TableOfContents::Heading.new(element_name: 'h3', text: 'Apple recipes', attributes: {'id' => 'apple-recipes'}),
      TableOfContents::Heading.new(element_name: 'h1', text: 'Oranges', attributes: {'id' => 'oranges'})
    ]

    expected_tree = TableOfContents::HeadingTree.new(
      children: [
        TableOfContents::HeadingTree.new(
          heading: TableOfContents::Heading.new(element_name: 'h1', text: 'Apples', attributes: {'id' => 'apples'}),
          children: [
            TableOfContents::HeadingTree.new(
              children: [
                TableOfContents::HeadingTree.new(
                  heading: TableOfContents::Heading.new(element_name: 'h3', text: 'Apple recipes', attributes: {'id' => 'apple-recipes'})
                )
              ]
            )
          ]
        ),
        TableOfContents::HeadingTree.new(
          heading: TableOfContents::Heading.new(element_name: 'h1', text: 'Oranges', attributes: {'id' => 'oranges'}),
        )
      ]
    )

    expect(described_class.new(headings).tree).to eq(expected_tree)
  end
end

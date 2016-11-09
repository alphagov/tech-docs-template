require 'spec_helper'

describe TableOfContents::HeadingTree, '#==' do
  it 'is true if the trees have the same headings for every node' do
    a = TableOfContents::HeadingTree.new(
      children: [
        TableOfContents::HeadingTree.new(
          heading: TableOfContents::Heading.new(element_name: 'h1', text: 'Apples', attributes: {'id' => 'apples'}),
          children: [
            TableOfContents::HeadingTree.new(
              heading: TableOfContents::Heading.new(element_name: 'h2', text: 'Seeds', attributes: {'id' => 'seeds'}),
            )
          ]
        )
      ]
    )
    b = TableOfContents::HeadingTree.new(
      children: [
        TableOfContents::HeadingTree.new(
          heading: TableOfContents::Heading.new(element_name: 'h1', text: 'Apples', attributes: {'id' => 'apples'}),
          children: [
            TableOfContents::HeadingTree.new(
              heading: TableOfContents::Heading.new(element_name: 'h2', text: 'Seeds', attributes: {'id' => 'seeds'}),
            )
          ]
        )
      ]
    )

    expect(a).to eq(b)
  end

  it 'is false if the number of leaves of the tree differ' do
    a = TableOfContents::HeadingTree.new(
      children: [
        TableOfContents::HeadingTree.new(
          heading: TableOfContents::Heading.new(element_name: 'h1', text: 'Apples', attributes: {'id' => 'apples'}),
        ),
        TableOfContents::HeadingTree.new(
          heading: TableOfContents::Heading.new(element_name: 'h1', text: 'Oranges', attributes: {'id' => 'oranges'}),
        )
      ]
    )
    b = TableOfContents::HeadingTree.new(
      children: [
        TableOfContents::HeadingTree.new(
          heading: TableOfContents::Heading.new(element_name: 'h1', text: 'Apples', attributes: {'id' => 'apples'}),
        )
      ]
    )

    expect(a).to_not eq(b)
  end

  it 'is false if a heading differs' do
    a = TableOfContents::HeadingTree.new(
      heading: TableOfContents::Heading.new(element_name: 'h1', text: 'Apples', attributes: {'id' => 'apples'}),
    )
    b = TableOfContents::HeadingTree.new(
      heading: TableOfContents::Heading.new(element_name: 'h1', text: 'Oranges', attributes: {'id' => 'oranges'}),
    )

    expect(a).to_not eq(b)
  end
end

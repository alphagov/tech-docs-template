require 'spec_helper'

describe TableOfContents::Heading, '#importance' do
  it 'returns the level of the heading' do
    heading = described_class.new(element_name: 'h2', text: '', attributes: {})

    expect(heading.importance).to eq(2)
  end
end

describe TableOfContents::Heading, '#href' do
  it 'returns a fragment href' do
    heading = described_class.new(element_name: '', text: '', attributes: {'id' => 'apple-recipes'})

    expect(heading.href).to eq('#apple-recipes')
  end
end

describe TableOfContents::Heading, '#title' do
  it 'returns the text of the element' do
    heading = described_class.new(element_name: '', text: 'Apples', attributes: {})

    expect(heading.title).to eq('Apples')
  end
end

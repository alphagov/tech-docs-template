require 'spec_helper'

describe TableOfContents::Heading, '#size' do
  it 'returns the level of the heading' do
    heading = described_class.new(element_name: 'h2', text: '', attributes: {})

    expect(heading.size).to eq(2)
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

describe TableOfContents::Heading, '#==' do
  it 'is true if the element_name, text and attributes match' do
    a = described_class.new(element_name: 'h1', text: 'Cars', attributes: {'id' => 'cars'})
    b = described_class.new(element_name: 'h1', text: 'Cars', attributes: {'id' => 'cars'})

    expect(a).to eq(b)
  end

  it 'is false if the element_name differs' do
    a = described_class.new(element_name: 'h1', text: 'Cars', attributes: {'id' => 'cars'})
    b = described_class.new(element_name: 'h2', text: 'Cars', attributes: {'id' => 'cars'})

    expect(a).to_not eq(b)
  end

  it 'is false if the text differs' do
    a = described_class.new(element_name: 'h1', text: 'Cars', attributes: {'id' => 'cars'})
    b = described_class.new(element_name: 'h1', text: 'Boats', attributes: {'id' => 'cars'})

    expect(a).to_not eq(b)
  end

  it 'is false if the attributes differ' do
    a = described_class.new(element_name: 'h1', text: 'Cars', attributes: {'id' => 'cars'})
    b = described_class.new(element_name: 'h1', text: 'Cars', attributes: {})

    expect(a).to_not eq(b)
  end
end

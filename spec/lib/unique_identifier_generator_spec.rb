require 'unique_identifier_generator'

RSpec.describe UniqueIdentifierGenerator do
  let(:generator) { described_class.new }

  it 'should lower-case the text' do
    expect(generator.create('Heading', 1)).to eq "heading"
  end

  it 'should strip leading and trailing spaces' do
    expect(generator.create('  heading  ', 1)).to eq "heading"
  end

  it 'should replace non alphanumeric characters with dashes' do
    expect(generator.create('Headings (Etc) Are Great', 1)).to eq "headings-etc-are-great"
  end

  it 'should not include dashes at the start or end of the identifier' do
    expect(generator.create('(Not (More) Headings!)', 1)).to eq "not-more-headings"
  end

  it 'should strip HTML tags' do
    expect(generator.create('Using <code>bash</code>', 1)).to eq "using-bash"
  end

  it 'should generate unique headings by prefixing with the parent' do
    generator.create('Parent 1', 1)
    first_heading = generator.create('The Same Heading', 2)

    generator.create('Parent 2', 1)
    second_heading = generator.create('The Same Heading', 2)

    expect(first_heading).to eq "the-same-heading"
    expect(second_heading).to eq "parent-2-the-same-heading"
  end

  it 'should generate unique headings by suffixing with a number if parent is identical' do
    generator.create('The Same Parent', 1)

    first_heading = generator.create('The Same Heading', 2)
    second_heading = generator.create('The Same Heading', 2)
    third_heading = generator.create('The Same Heading', 2)

    expect(first_heading).to eq "the-same-heading"
    expect(second_heading).to eq "the-same-parent-the-same-heading"
    expect(third_heading).to eq "the-same-parent-the-same-heading-2"
  end

  it 'should generate unique headings by suffixing top level headings with a number' do
    first_heading = generator.create('The Same Heading', 1)
    second_heading = generator.create('The Same Heading', 1)

    expect(first_heading).to eq "the-same-heading"
    expect(second_heading).to eq "the-same-heading-2"
  end
end

require 'unique_identifier_generator'

RSpec.describe UniqueIdentifierGenerator do
  describe '#create' do
    it 'lower-cases the text' do
      expect(subject.create('Heading', 1)).to eq "heading"
    end

    it 'strips leading and trailing spaces' do
      expect(subject.create('  heading  ', 1)).to eq "heading"
    end

    it 'replaces non alphanumeric characters with dashes' do
      expect(subject.create('Headings (Etc) Are Great', 1)).to eq "headings-etc-are-great"
    end

    it 'does not add dashes at the start or end of the identifier' do
      expect(subject.create('(Not (More) Headings!)', 1)).to eq "not-more-headings"
    end

    it 'strips HTML tags' do
      expect(subject.create('Using <code>bash</code>', 1)).to eq "using-bash"
    end

    context 'with a parent that is unique' do
      it 'generates unique headings by prefixing with the parent' do
        subject.create('Parent 1', 1)
        first_heading = subject.create('The Same Heading', 2)

        subject.create('Parent 2', 1)
        second_heading = subject.create('The Same Heading', 2)

        aggregate_failures do
          expect(first_heading).to eq "the-same-heading"
          expect(second_heading).to eq "parent-2-the-same-heading"
        end
      end
    end

    context 'with a parent that is identical' do
      it 'generates unique headings by suffixing with a number' do
        subject.create('The Same Parent', 1)

        first_heading = subject.create('The Same Heading', 2)
        second_heading = subject.create('The Same Heading', 2)
        third_heading = subject.create('The Same Heading', 2)

        aggregate_failures do
          expect(first_heading).to eq "the-same-heading"
          expect(second_heading).to eq "the-same-parent-the-same-heading"
          expect(third_heading).to eq "the-same-parent-the-same-heading-2"
        end
      end
    end

    context 'with no parent' do
      it 'generates unique headings by suffixing with a number' do
        first_heading = subject.create('The Same Heading', 1)
        second_heading = subject.create('The Same Heading', 1)

        aggregate_failures do
          expect(first_heading).to eq "the-same-heading"
          expect(second_heading).to eq "the-same-heading-2"
        end
      end
    end
  end
end

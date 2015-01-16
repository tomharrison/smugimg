require 'spec_helper'

describe SmugImg::Template do
  include_context 'shared urls'

  describe '.initialize' do
    it 'initializes a new instance given a valid type a guid' do
      expect { SmugImg::Template.new(guid_a) }.to_not raise_error
    end
  end

  describe '.render' do
    it 'renders from guid a for predefined SmugMug sizes' do
      tmpl = SmugImg::Template.new(guid_a)
      sizes.each do |s|
        expect(tmpl.render(s)).to eq(expected_urls_a[s])
      end
    end

    it 'renders from guid a for an arbitrary size' do
      tmpl = SmugImg::Template.new(guid_a)
      arbitrary_sizes.each do |s|
        expect(tmpl.render(s)).to eq(expected_arbitrary_urls_a[s])
      end
    end
  end
end

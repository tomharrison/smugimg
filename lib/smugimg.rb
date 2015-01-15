require 'smugimg/template'

module SmugImg
  class Image
    def initialize(guid)
      @cache = {}
      @template = Template.new(guid)
    end

    def at_size(size)
      @cache[size] ||= @template.render(size)
    end
  end
end

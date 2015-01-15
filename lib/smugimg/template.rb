require 'smugimg/constants'

module SmugImg
  class Template
    def initialize(guid)
      @body, @token_count = parse_guid(guid)
    end

    def render(size)
      sizes = []
      @token_count.times { sizes << size }
      @body % sizes
    end

    protected

    def parse_guid(guid)
      if guid =~ GuidFormatA
        ["#{$1}/%s/#{$2}-%s.#{$3}", 2]
      elsif guid =~ GuidFormatB
        ["#{$1}-%s-#{$2}", 1]
      else
        [guid, 0]
      end
    end
  end
end

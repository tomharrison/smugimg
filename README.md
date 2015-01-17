# SmugImg: SmugMug photo URLs at any given size.

![Travis CI build status](https://api.travis-ci.org/tomharrison/smugimg.png)

SmugImg parses GUIDs to photos at SmugMug, and is then able to generate a URL to your image at any given size.

This gem is a bit of reusable logic that I'm extracting from my [personal site](http://www.thetomharrison.com). I use it to implement a [custom liquid tag](https://github.com/tomharrison/thetomharrison.com/blob/master/_plugins/smugmug.rb) which generates URLs and IMG tags for my photos.

This isn't an official SmugMug gem. I'm not affiliated with the company SmugMug.

## Installation

Install the gem manually:

    gem install smugimg

Order add it to your Gemfile:

    gem 'smugimg'

## Usage

Create an instance of a SmugImg::Image using a photo GUID. One place you can get these from is from [your feeds](http://help.smugmug.com/customer/portal/articles/93263-what-do-feeds-do-).

    # Hard-coded image guid for display purposes only.
    ex_img = "http://galleries.thetomharrison.com/Portfolio/Output/i-4pJNdH6/0/Th/20150109-090134-xt1-Th.jpg"

    img = SmugImg::Image.new(ex_img)

You can use all of the pre-defined sizes:

    %w{Ti S M L XL X2 X3 O}.each do |s|
      puts img.at_size(s)
    end

Or you can use custom dimensions in the form of 'WIDTHxHEIGHT':

    puts img.at_size('500x250')

## Tests

Run the rspec tests with rake:

    rake

## Authors

- Tom Harrison <tomharrison@gmail.com>, [@tomharrison](https://twitter.com/tomharrison)

## License

[MIT](LICENSE)

Gem::Specification.new do |s|
  s.name = 'smugimg'
  s.version = '0.0.1'
  s.date = '2015-01-14'
  s.summary = 'Generate SmugMug photo URLs.'
  s.description = 'SmugImg is able to parse the GUID to a SmugMug photo and generate URLs to that image at any given size.'
  s.authors = ['Tom Harrison']
  s.email = 'tomharrison@gmail.com'
  s.files = ['lib/smugimg.rb', 'lib/smugimg/constants.rb', 'lib/smugimg/template.rb']
  s.homepage = 'https://github.com/tomharrison/smugimg'
  s.license = 'MIT'

  s.add_development_dependency 'rspec', '~> 3.1.0'
  s.add_development_dependency 'rake', '~> 10.4.2'
end

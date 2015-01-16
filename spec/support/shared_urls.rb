shared_context 'shared urls', :a => :b do
  let(:guid_a) { 'http://galleries.thetomharrison.com/Portfolio/Output/i-4pJNdH6/0/Th/20150109-090134-xt1-Th.jpg' }

  let(:sizes) do
    ['Ti', 'Th', 'S', 'M', 'L', 'XL', 'X2', 'X3', 'O']
  end

  let(:expected_urls_a) do
    {
      'Ti' => 'http://galleries.thetomharrison.com/Portfolio/Output/i-4pJNdH6/0/Ti/20150109-090134-xt1-Ti.jpg',
      'Th' => 'http://galleries.thetomharrison.com/Portfolio/Output/i-4pJNdH6/0/Th/20150109-090134-xt1-Th.jpg',
      'S'  => 'http://galleries.thetomharrison.com/Portfolio/Output/i-4pJNdH6/0/S/20150109-090134-xt1-S.jpg',
      'M'  => 'http://galleries.thetomharrison.com/Portfolio/Output/i-4pJNdH6/0/M/20150109-090134-xt1-M.jpg',
      'L'  => 'http://galleries.thetomharrison.com/Portfolio/Output/i-4pJNdH6/0/L/20150109-090134-xt1-L.jpg',
      'XL' => 'http://galleries.thetomharrison.com/Portfolio/Output/i-4pJNdH6/0/XL/20150109-090134-xt1-XL.jpg',
      'X2' => 'http://galleries.thetomharrison.com/Portfolio/Output/i-4pJNdH6/0/X2/20150109-090134-xt1-X2.jpg',
      'X3' => 'http://galleries.thetomharrison.com/Portfolio/Output/i-4pJNdH6/0/X3/20150109-090134-xt1-X3.jpg',
      'O'  => 'http://galleries.thetomharrison.com/Portfolio/Output/i-4pJNdH6/0/O/20150109-090134-xt1-O.jpg'
    }
  end

  let(:arbitrary_sizes) { ['500x500'] }

  let(:expected_arbitrary_urls_a) do
    {
      '500x500' => 'http://galleries.thetomharrison.com/Portfolio/Output/i-4pJNdH6/0/500x500/20150109-090134-xt1-500x500.jpg'
    }
  end
end

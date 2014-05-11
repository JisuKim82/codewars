require_relative 'spec_helper'
require_relative '../extract_the_domain_name_from_url'

describe '#domain_name' do
  
  context 'when given a URL as a string, parses out jus the domain name' do
    
    it 'should return github' do
      expect(domain_name('http://github.com/carbonfive/raygun')).to eq 'github'
    end
    
    it 'should return zombie-bites' do
      expect(domain_name('http://www.zombie-bites.com')).to eq 'zombie-bites'
    end

    it 'should return cnet' do
      expect(domain_name('https://www.cnet.com')).to eq 'cnet'
    end
  end
end
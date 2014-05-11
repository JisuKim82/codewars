require_relative 'spec_helper'
require_relative '../ipv4_to_int32'

describe '#ip_to_int32' do
  context 'takes an IPv4 address and returns a 32 bit number' do
    it 'should return 2149583361 when 128.32.10.1 is passed' do
      expect(ip_to_int32('128.32.10.1')).to eq 2149583361   
    end
  end
end
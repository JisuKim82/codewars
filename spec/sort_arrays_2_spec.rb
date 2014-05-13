require_relative 'spec_helper'
require_relative '../sort_arrays_2'

describe '#sort_array_2' do
  context 'it sorts array regardless of upper/lowercase' do
    it '[ "Hello", "there", "Im", "fine"] is translated to ["fine", "Hello", "Im", "there"]' do
      expect(sort_array_2([ "Hello", "there", "Im", "fine"])).to eq ["fine", "Hello", "Im", "there"]
    end
  end
end
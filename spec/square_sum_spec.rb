require_relative 'spec_helper'
require_relative '../square_sum'

describe '#squareSum' do
  context 'it squares each number passed into it and then sums the results' do
    it 'returns 9 when [1,2,2] is passed in' do
      expect(squareSum([1,2,2])).to eq 9
    end

    it 'returns 82 when [9,0,1] is passed in' do
      expect(squareSum([9,0,1])).to eq 82
    end
  end
end
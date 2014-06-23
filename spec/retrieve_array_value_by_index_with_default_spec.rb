require_relative 'spec_helper'
require_relative '../retrieve_array_value_by_index_with_default'

describe '#solution' do
  
  before do
    @data = ['a', 'b', 'c']
  end
  
  context 'It should try to retrieve the value of the array at the index provided' do  
    it "should return 'b' for solution(data,1,'d')" do
      expect(solution(@data,1,'d')).to eq 'b'
    end

    it "should return 'd' for solution(data,5,'d')" do
      expect(solution(@data,5,'d')).to eq 'd'
    end

    it "should return 'd' for solution(data,3,'d')" do
      expect(solution(@data,3,'d')).to eq 'd'
    end
  end

  context 'It should also work for negative numbers as long as they aren\'t out of the bounds' do
    it "should return 'c' for solution(data,-1,'d')" do
      expect(solution(@data,-1,'d')).to eq 'c'
    end

    it "should return 'd' for solution(data,-5,'d')" do
      expect(solution(@data,-5,'d')).to eq 'd'  
    end

    it "should return 'a' for solution(data,-3,'d')" do
      expect(solution(@data,-3,'d')).to eq 'a'
    end
  end

  describe 'If data is an array of nils' do
    before do
      @data = [nil,nil]
    end
    
    it "should return 'nil' for solution(data,-1,'d')" do
      expect(solution(@data,-1,'d')).to eq nil
    end
  end
end
require_relative 'spec_helper'
require_relative '../ruby_enumerator_methods-part1'

describe '#check_ages?' do
  
  before :each do
    @data = [
      {age: 40, sex: :m},
      {age: 24, sex: :f},
      {age: 56, sex: :m},
      {age: 45, sex: :m},
      {age: 23, sex: :f}       
    ]
  end
  
  context 'it checks if all the ages in the data are greater than the age passed in' do
    it 'returns true' do
      expect(check_ages?(@data,:m,25)).to eq true
    end 

    it 'returns false for :m when age is the equals the lowest age' do
      expect(check_ages?(@data,:m,40)).to eq false
    end

    it 'returns false for :f when age is the equals the lowest age' do
      expect(check_ages?(@data,:f,23)).to eq false
    end

    it 'returns true for :f when age is less than the ages in data' do
      expect(check_ages?(@data,:f,22)).to eq true
    end  
  end
end
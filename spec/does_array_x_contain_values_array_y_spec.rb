require_relative 'spec_helper'
require_relative '../does_array_x_contain_values_array_y'

describe '.contains_all?' do
  before :each do 
    @items=[1,2,3,4,5,6,7,8,9]
  end
  
  it 'should return true' do
    expect(@items.contains_all?([1,2,3])).to eq true 
  end

  it 'should return false' do
    expect(@items.contains_all?([1,5,13])).to eq false
  end
end

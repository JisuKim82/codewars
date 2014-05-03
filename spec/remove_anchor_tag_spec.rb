require_relative 'spec_helper'
require_relative '../remove_anchor_tag'

describe 'remove_url_anchor' do
  it 'removes the anchor tag and everything that follows' do
    expect(remove_url_anchor('www.monkey.com#welome')).to eq('www.monkey.com')
  end
end
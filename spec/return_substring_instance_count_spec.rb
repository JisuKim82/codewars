require_relative 'spec_helper'
require_relative '../return_substring_instance_count'

describe '#solution' do
  context 'solution returns the number of times the search text is found within the full text' do
    it 'should return 2' do
      expect(solution('aa_bb_cc_dd_bb_e','bb')).to eq 2
    end
    it 'should return 1' do
      expect(solution('aaabbbcccc', 'bbb')).to eq 1
    end
  end
end
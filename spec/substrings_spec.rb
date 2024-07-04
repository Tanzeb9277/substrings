require 'spec_helper'
require_relative '../lib/substrings'


RSpec.describe 'Substrings Project' do
  describe 'get substring hash' do
    it 'can find substrings for one word' do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      expected_output = {"below"=>1, "low"=>1}
      expect(substrings("below", dictionary)).to eq(expected_output)
    end

    # remove the 'x' from the line below to unskip the test
    it 'can find substrings for a full sentence' do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      expected_output = {"down"=>1, "go"=>1, "going"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
      expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eq(expected_output)
    end

  end
end

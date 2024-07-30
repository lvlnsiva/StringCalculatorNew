require 'spec_helper'

# The top of your testing block
# More examples of tests can be found here: https://github.com/rspec/rspec-expectations
RSpec.describe StringCalculator, ".add" do
  it "returns 0 for empty string" do
    expect(StringCalculator.add("")).to eql(0)
  end

  context "single number" do
    it "return 3 for 3" do
      expect(StringCalculator.add("3")).to eql(3)
    end
  end

 
end
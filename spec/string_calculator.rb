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

  context "2 numbers" do
    it "returns 5 for 2,3" do
      expect(StringCalculator.add("2,3")).to eql(5)
    end
  end

  context "3 numbers" do
    it "returns 6 for 1,2,3" do
      expect(StringCalculator.add("1,2,3")).to eql(6)
    end
  end

  context "many numbers" do
    it "returns 1000 for 100 10s" do
      expect(StringCalculator.add("#{(["10"]*100).join(",")}")).to eql(1000)
    end
  end

  context "new lines as delimiters" do
    it "supoorts new lines" do
      expect(StringCalculator.add("1\n2")).to eql(3)
    end
  end

  context "raise error for negitive numbers" do
    it "raises an exception for negitive numbers" do
      Proc.new{
        expect(StringCalculator.add("-1")).to raise_error 
      }
    end
  end
end
require './string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe "#add" do
    it "returns 0 for an empty string" do
      expect(calculator.add("")).to eq(0)
    end

    it "returns number for single number" do
      expect(calculator.add("1")).to eq(1)
    end

    it "returns the sum of two numbers" do
      expect(calculator.add("1,5")).to eq(6)
    end

    it "returns the sum of multiple numbers" do
      expect(calculator.add("1,2,3,4")).to eq(10)
    end

    it "returns the sum of numbers seprated with new line" do
      expect(calculator.add("1\n2, 3, 4")).to eq(10)
    end

    it "raises an exception for negative numbers" do
      expect { calculator.add("1,-2") }.to raise_error(RuntimeError, "negative numbers not allowed -2")
    end

    it "lists all negative numbers in the exception" do
      expect { calculator.add("1,-2,-3") }.to raise_error(RuntimeError, "negative numbers not allowed -2,-3")
    end
  end
end

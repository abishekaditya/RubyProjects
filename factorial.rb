#!/usr/bin/ruby

class Fact
  def fact(n)
    if n <= 0
      1
    else
      n * fact(n - 1)
    end
  end
end

describe Fact do
  context "when 5 inputted" do
    it "is 120" do
      my_fact = Fact.new
      expect(my_fact.fact(5)).to eq 120
    end
  end
end


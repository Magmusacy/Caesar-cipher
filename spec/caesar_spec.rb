require './lib/Caesar-cipher.rb'

describe "#cipher" do
  it "Returns encrypted string given a negative integer" do
    expect(cipher("What a string!", -5)).to eql("Rcvo v nomdib!")
  end

  it "Returns encrypted string given a positive integer" do
    expect(cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end
end

describe "#check_case" do
  it "Returns the first character code in a given ASCII sequence so for b it returns code for a = 97" do
    expect(check_case("b".ord)).to eql(97)
  end

  it "Returns the first character code in a given ASCII sequence so for B it returns code for A = 65" do
    expect(check_case("B".ord)).to eql(65)
  end
end

describe "#shift_index" do
  it "Returns number which should be added to base case from check_case method to shift the character correctly given a positive integer" do
    expect(shift_index(69)).to eql(17)
  end

  it "Returns number which should be added to base case from check_case method to shift the character correctly given a positive integer" do
    expect(shift_index(-690)).to eql(12)
  end
end



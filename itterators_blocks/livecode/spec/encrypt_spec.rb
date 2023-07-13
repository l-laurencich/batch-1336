require_relative "../encrypt.rb"

describe "#encrypt" do
  it "returns an empty string when passed an empty string" do
    actual = encrypt("")
    expected = ""
    expect(actual).to eq(expected)
  end

  it "returns the 3-letter backwards shifted text" do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end
end
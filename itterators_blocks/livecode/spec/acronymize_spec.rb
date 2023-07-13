require_relative "../acronymize.rb"

describe "#acronymize" do
  it "returns an empty string when passed an empty string" do
    actual = acronymize("")
    expected = ""
    expect(actual).to eq(expected)
  end

  it "returns the acronym of a downcase sentence" do
    actual = acronymize("what the funk")
    expected = "WTF"
    expect(actual).to eq(expected)
  end

  it "returns the acronym of an upcase sentence" do
    actual = acronymize("LAUGHING OUT LOUD")
    expected = "LOL"
    expect(actual).to eq(expected)
  end
end
require_relative "../lion.rb"

describe Lion do
  #write a test for talk
  describe "#talk" do
    it "should return a sentence stating that Simba roars" do
      simba = Lion.new("Simba")
      expect(simba.talk).to eq("Simba roars")
    end
  end
end
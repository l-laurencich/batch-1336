require_relative "../citizen"


describe Citizen do
  describe "#can_vote?" do
    it "should return true if the citizen is at least 18 years old" do
      citizen = Citizen.new("", "", 18)
      expect(citizen.can_vote?).to eq(true)
    end

    it "should return false if the citizen is not 18 years old yet" do
      citizen = Citizen.new("", "", 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe "#full_name" do 
    it "should return the capitalized full name of the citizen" do
      citizen = Citizen.new("keLLy", "SlatEr", 50)
      expect(citizen.full_name).to eq("Kelly Slater")
    end
  end
end

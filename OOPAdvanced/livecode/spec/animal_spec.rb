require_relative "../animal.rb"

describe Animal do 
  #write a test for initialize
  describe "#initialize" do
    it "creates an instance of an animal" do
      mouse = Animal.new("Mickey")
      expect(mouse).to be_an(Animal)
    end
  end
  
  
  #write a test for name
  describe "#name" do
    it "should it return the name of the animal" do
      jerry = Animal.new("Jerry") 
      expect(jerry.name).to eq("Jerry")
    end
  end
  
  #write a test for phyla
  describe "::phyla" do
    it "returns an array of the 10 phyla of the animal kingdom" do
      phyla = Animal.phyla
      expect(phyla.size).to eq(10)
    end

  end
end
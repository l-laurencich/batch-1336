class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.phyla
    [" Porifera",
      "Coelenterata",
      "Platyhelminthes",
      "Nematoda",
      "Annelida",
      "Arthropoda",
      "Mollusca",
      "Echinodermata",
      "Protochordata",
      "Vertebrata"]
  end

  def eat(food)
    "#{@name} eats a #{food}"
  end
end

#Simba eats a scorpion
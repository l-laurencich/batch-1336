require_relative "lion"
require_relative "meerkat"
require_relative "warthog"

simba = Lion.new("Simba")
nala = Lion.new("Nala")
timon = Meerkat.new("Timon")
pumba = Warthog.new("Pumba")

array = [simba, nala, timon, pumba]

array.each do |animal|
  puts animal.talk
  puts animal.eat("tortelini")
end
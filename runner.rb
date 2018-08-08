# I should have created a runner file to use a playground

require_relative("bear")
require_relative("fish")
require_relative("river")

yogi = Bear.new("Yogi", "Grizzly")

nemo = Fish.new("Nemo")
nemo1 = Fish.new("Nemo 1")
nemo2 = Fish.new("Nemo 2")

fishes = [nemo, nemo1, nemo2]


amazon = River.new("Amazon", fishes)

p yogi.name
p nemo.name
p amazon

p yogi.eat_fish(amazon)
p yogi.count_food
p amazon.fishes.count

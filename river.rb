class River

  attr_reader(:name, :fishes)

  def initialize(name, fishes = [])
    @name = name
    @fishes = fishes
  end

  def lose_a_fish
    return @fishes.delete_at(0)
  end


end

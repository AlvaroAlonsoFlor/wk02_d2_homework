class Bear
  attr_reader(:name, :stomach)

  def initialize(name, stomach = [])
    @name = name
    @stomach = stomach
  end

  def roar
    return "Grr!"
  end

  def count_food
    food_eaten = @stomach.count

    if @stomach == []
      return "The bear hasn't eaten any food recently"
    else
      return "The bear has eaten #{food_eaten} fishes"
    end

  end

end

class Bear
  attr_reader(:name, :type, :stomach )

  def initialize(name, type, stomach = [])
    @name = name
    @type = type
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

  def eat_fish(river)

    if river.fishes == []
      return "There are no fishes to eat"
    else
      @stomach.push(river.fishes[0])
      river.lose_a_fish

    end

  end

end

class Bear
  attr_reader(:name, :stomach)

  def initialize(name, stomach = [])
    @name = name
    @stomach = stomach
  end

end

class Bear

attr_reader(:name, :type, :stomach)

  def initialize(name, type, stomach)
    @name = name
    @type = type
    @stomach = stomach
  end

  def eat_fish(fish)
    @stomach << fish
  end

  def bear_roar
    return "Rawwwwr"
  end

  def bear_fish_count
    return @stomach.length
  end

  def take_fish_from_river(a_river)
    a_fish = a_river.get_fish()
    eat_fish( a_fish )
  end

end

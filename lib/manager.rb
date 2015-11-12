module Manager
  attr_reader :entity, :add_entity, :remove_entity

  def full?
    @entity.length >= @entity_max
  end

  def add_entity(first_name, last_name)
    @entity << Occupant.new(first_name, last_name)
  end

  def remove_entity
    @entity.pop
  end

end

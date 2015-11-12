class Truck
  attr_reader :entity

  def initialize(number_of_entities)
    @entity = []
    @entity_max = number_of_entities
  end

  def remove_boxes(object)
    @entity.delete(object)
  end

  def full?
    @entity.length >= @entity_max
  end

  def add_entity(first_name, last_name)
    @entity << Occupant.new(first_name, last_name)
  end

  def remove_entity
    @entity.pop
  end

  def remove_persons_boxes(first_name, last_name)
      @entity.delete_if {|x| x.first_name == first_name && x.last_name == last_name}
  end


end

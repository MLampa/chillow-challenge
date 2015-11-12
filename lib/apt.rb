class Apt < Dwelling
  include Manager

  attr_accessor :rent, :lease_start_date, :lease_end_date

  def initialize(address, city_or_town, state, zip_code, rent, lease_start_date, lease_end_date)
    super(address, city_or_town, state, zip_code)
    @rent = rent
    @lease_start_date = lease_start_date
    @lease_end_date = lease_end_date
    @entity = []
    @entity_max = 5
  end

  # def full?
  #   tenants.count >= 3
  # end
  #
  # def add_roommate(first_name, last_name)
  #   entity << Occupant.new(first_name, last_name)
  # end
  #
  # def remove_roommate
  #   entity.pop
  # end
end

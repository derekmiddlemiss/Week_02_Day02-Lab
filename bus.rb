class Bus

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  def get_route
    @route
  end

  def get_destination
    @destination
  end

  def drive_method
    "Brum, brum"
  end

  def get_passengers
    @passengers
  end

  def passengers_count
    @passengers.count
  end

  def pick_up (passenger)
    @passengers.push(passenger)
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty_passengers
    @passengers = []
  end

end
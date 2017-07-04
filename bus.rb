class Bus

  def initialize(route, destination)
    @route = route
    @destination = destination
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

end
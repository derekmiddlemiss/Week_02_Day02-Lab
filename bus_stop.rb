class BusStop

  def initialize(name)
    @name = name
    @queue = []
  end

  def get_name
    @name
  end

  def get_queue
    @queue
  end

  def add_person(passenger)
    @queue.push(passenger)
  end

end
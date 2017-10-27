class Bike
  attr_accessor :status

  def initialize(status=true)
    @status=status
  end

  def working?
    @status
  end

  def report_broken
    @status=false
  end

end

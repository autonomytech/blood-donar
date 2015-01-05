module HomeHelper
  def states
    return if @states.nil?
    @states.collect { |c| [c.name, c.id] }
  end

  def districts
    return if @districts.nil?
    @districts.collect { |c| [c.name, c.id] }
  end

  def cities
    return if @cities.nil?
    @cities.collect { |c| [c.name, c.id] }
  end
end

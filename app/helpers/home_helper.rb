module HomeHelper
  def states
    return if @states.nil?
    @states.collect(&:name)
  end

  def districts
    return if @districts.nil?
    @districts.collect(&:name)
  end

  def cities
    return if @cities.nil?
    @cities.collect(&:name)
  end
end

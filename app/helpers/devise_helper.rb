module DeviseHelper
  def devise_error_messages!
    return  if resource.errors.empty?

    messages = resource.errors.full_messages.map \
    { |msg| content_tag(:li, msg) }.join

    html = <<-HTML
    <div class="alert alert-danger alert-dismissable">
      <ul align="left">#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end

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

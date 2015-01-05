module CitiesHelper
  def cities_errors_messages!
    return if @city.errors.empty?
    msg = @city.errors.full_messages.map { |m| content_tag(:li, m) }.join

    html = <<-HTML
    <div class="alert alert-danger alert-dismissable">
      <ul align="left">#{msg}</ul>
    </div>
    HTML
    html.html_safe
  end

  def districts
    return if @districts.nil?
    @districts.collect { |c| [c.name, c.id] }
  end
end

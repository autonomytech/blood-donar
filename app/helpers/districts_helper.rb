module DistrictsHelper
  def districts_errors_messages!
    return if @district.errors.empty?
    msg = @district.errors.full_messages.map { |m| content_tag(:li, m) }.join

    html = <<-HTML
    <div class="alert alert-danger alert-dismissable">
      <ul align="left">#{msg}</ul>
    </div>
    HTML
    html.html_safe
  end

  def states
    return if @states.nil?
    @states.collect(&:name)
  end
end

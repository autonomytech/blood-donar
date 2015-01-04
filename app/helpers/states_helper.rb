module StatesHelper
  def states_errors_messages!
    return if @state.errors.empty?
    msg = @state.errors.full_messages.map { |m| content_tag(:li, m) }.join

    html = <<-HTML
    <div class="alert alert-danger alert-dismissable">
      <ul align="left">#{msg}</ul>
    </div>
    HTML
    html.html_safe
  end
end

module ApplicationHelper
  def errors_for(object, message=nil)
    html = ""
    unless object.errors.blank?
      html << "<div class=\"flash-error\">\n"
      object.errors.full_messages.each do |error|
        html << error << "<br>"
      end
      html << "</div>\n"
    end

    raw(html)
  end

  def time_ago_in_words_label(*args)
    label_tag(nil, "at #{args.first.strftime("%Y %b %d %H:%M %Z")}",
      :title => args.first.strftime("%F %T %z"))
  end

  def main_root_url
    Rails.application.routes.url_helpers.root_url
  end
end

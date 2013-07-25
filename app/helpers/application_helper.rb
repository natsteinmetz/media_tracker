module ApplicationHelper
  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << "Media Tracker").join(" - ")
      end
    end
  end
end


module ApplicationHelper
  def uploadcare_url(uid)
    "http://www.ucarecdn.com/#{uid}/"
  end
end

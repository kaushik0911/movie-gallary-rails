module Api::MoviesHelper
  def thumb(object)
    "#{request.base_url}#{url_for(object.poster.variant(:thumb))}"
  end
end

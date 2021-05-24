module Api::MoviesHelper
  def original_image(object)
    "#{rails_blob_url(object)}"
  end
end

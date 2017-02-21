module StaticPagesHelper
  def user_photos(user_id)
    FlickRaw.api_key = ENV["flickr_key"]
    FlickRaw.shared_secret = ENV["flickr_secret"]
    flickr.photos.search(user_id: user_id)
  end
end

class Flashcard < ApplicationRecord
  belongs_to :flashcard_set
  has_one_attached :image

  def image_url
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end
  # def image_urls
  #   images.map{|i| Rails.application.routes.url_helpers.url_for(i)}
  # end

end

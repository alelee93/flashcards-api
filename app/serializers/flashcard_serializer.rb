class FlashcardSerializer
  include JSONAPI::Serializer
  attributes :id, :card_number, :question, :answer, :flashcard_set_id, :image_url
  
end

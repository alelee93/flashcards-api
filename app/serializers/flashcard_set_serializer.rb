class FlashcardSetSerializer
  include JSONAPI::Serializer
  attributes :title
  has_many :flashcards
end

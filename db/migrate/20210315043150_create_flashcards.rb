class CreateFlashcards < ActiveRecord::Migration[6.0]
  def change
    create_table :flashcards do |t|
      t.integer :card_number
      t.text :question
      t.text :answer
      t.belongs_to :flashcard_set, null: false, foreign_key: true

      t.timestamps
    end
  end
end

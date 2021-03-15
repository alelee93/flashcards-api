class CreateFlashcardSets < ActiveRecord::Migration[6.0]
  def change
    create_table :flashcard_sets do |t|
      t.string :title

      t.timestamps
    end
  end
end

class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.integer :score
      t.text :description
      t.belongs_to :survey, index: true, null: false

      t.timestamps
    end
  end
end

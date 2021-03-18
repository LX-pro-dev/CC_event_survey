class CreateSurveys < ActiveRecord::Migration[6.1]
  def change
    create_table :surveys do |t|
      t.integer :tasty, null: false, default: 1
      t.integer :presentation, null: false, default: 1
      t.integer :atmosphere, null: false, default: 1
      t.integer :total
      t.belongs_to :event, index: true, null: false

      t.timestamps
    end
  end
end

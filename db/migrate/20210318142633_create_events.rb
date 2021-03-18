class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :status, null: false, default: "planned"
      t.integer :total_event
      t.integer :nb_participants

      t.timestamps
    end
  end
end

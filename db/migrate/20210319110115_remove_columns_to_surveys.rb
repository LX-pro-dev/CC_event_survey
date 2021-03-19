class RemoveColumnsToSurveys < ActiveRecord::Migration[6.1]
  def change
    remove_column :surveys, :tasty, :integer
    remove_column :surveys, :atmosphere, :integer
    remove_column :surveys, :presentation, :integer
  end
end

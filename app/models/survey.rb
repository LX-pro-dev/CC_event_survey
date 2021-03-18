class Survey < ApplicationRecord
  belongs_to :event

  validates :tasty, :presentation, :atmosphere,
    numericality: { greater_than: 0, less_than_or_equal_to: 4 }

  
  def total
    tasty + atmosphere + presentation
  end

end

class Event < ApplicationRecord
  has_many :surveys, dependent: :destroy
  
  validates :status, presence: true
  STATUSES = [:indéfini, :prévu, :terminé]

  def total_event
    surveys.sum(:total)
  end
end

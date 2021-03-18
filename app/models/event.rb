class Event < ApplicationRecord
  has_many :surveys, dependent: :destroy
  
  validates :status, presence: true
  STATUSES = [:Indéfini, :Prévu, :Terminé]

  def total_event
    surveys.sum(:total)
  end
end

class Survey < ApplicationRecord
  belongs_to :event
  has_many :questions, dependent: :destroy
  
  def total
   questions.sum { |question| question.score }
  end

end

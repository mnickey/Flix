class Review < ActiveRecord::Base
  belongs_to :movie

  STARS = [1, 2, 3, 4, 5]

  validates :name, presence: true
  validates :comment, length: {minimum: 4}
  validates :stars, inclusion: { in: STARS, message: "must be between 1 and 5"}
  
end


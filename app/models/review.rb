class Review < ApplicationRecord
  belongs_to :restaurant

  validate_associated :restaurant 
  validate :content, presence: true
  validate :rating, :numericality => {
    :only_integer
    :greater_than_or_equal(0)
    :less_than_or_equal(5)
  } 

end

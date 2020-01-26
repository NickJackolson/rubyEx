class Review < ApplicationRecord
  belongs_to :writer
  validates :reviewer , :body , presence: true, length: { minimum: 5}
end

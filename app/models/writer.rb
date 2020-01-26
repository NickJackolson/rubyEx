class Writer < ApplicationRecord
    has_many :reviews
    validates :name, :expertise, :experience, presence: true
end

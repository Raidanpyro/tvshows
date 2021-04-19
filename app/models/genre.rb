class Genre < ApplicationRecord
  has_many :serietests

  validates :name, :uniqueness => true
end

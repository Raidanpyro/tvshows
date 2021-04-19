class Season < ApplicationRecord
  #belongs_to :serietest
  has_many :episodes

  validates :number, :presence => true
end

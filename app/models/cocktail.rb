class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews, dependent: :destroy
  validates :stars, inclusion: { in: [ 1, 2, 3, 4, 5 ] }
  validates :name, presence: true, uniqueness: true
end

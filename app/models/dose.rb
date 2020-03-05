class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  has_many :ingredients
  validates :description, presence: true
  validates :cocktail_id, presence: true, uniqueness: { scope: :ingredient}
  validates :ingredient_id, presence: true

end

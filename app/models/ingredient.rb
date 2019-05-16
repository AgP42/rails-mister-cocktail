class Ingredient < ApplicationRecord

  has_many :doses
  has_many :cocktails, through: :doses

  # You can't delete an ingredient if it used by at least one cocktail.
  # before_destroy :check_for_cocktail

  validates :name, uniqueness: true, presence: true

  # private

  # def check_for_cocktail
  #   if Ingredient.cocktails.count > 0
  #     errors.add_to_base("cannot delete ingredient while used in a cocktail")
  #     return false
  #   end
  # end
end

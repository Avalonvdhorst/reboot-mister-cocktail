class Ingredient < ApplicationRecord
  # before_destroy :confirm_destroy
  has_many :doses
  has_many :cocktails, through: :doses

  validates :name, presence: true, uniqueness: true

  # def confirm_destroy

  # end
end

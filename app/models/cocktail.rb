class Cocktail < ApplicationRecord
  mount_uploader :photo, PhotoUploader #dit zorgt ervoor dat de model weet dat wanneer er iets binnen komt op :photo, hij  naar de photouploader moet

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true
end

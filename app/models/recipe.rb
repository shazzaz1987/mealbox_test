class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :transactions
  # validates :name, presence: true
  # validates :cuisine, presence: true
  # validates :costperserving, presence: true
  # validates :instructions, presence: true
  # validates :image, presence: true
  VALID_IMAGE_REGEX = /(.png\z|.PNG\z|.jpg\z|.JPG\z|.gif\z|.GIF\z)/

  validates :name,  presence: { message: "Please enter the name for your recipe." }

  validates :image, presence: { message: "Please choose an image for your recipe." }
  validates :image, format: { with: VALID_IMAGE_REGEX, message: "Please enter a valid image link" }

  validates :cuisine, presence: { message: "Please choose a cuisine for your recipe." }

  validates :instructions, presence: { message: "Please include instructions for your recipe." }

  # def cuisine_exist
  # errors.add(:cuisine, :missing) if cuisine.nil?
  # end
end

class Aventure < ApplicationRecord
  has_and_belongs_to_many :indefinitions
  has_and_belongs_to_many :variables
end

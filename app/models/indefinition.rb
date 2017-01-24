class Indefinition < ApplicationRecord
  has_and_belongs_to_many :aventures
  has_and_belongs_to_many :variables
  has_and_belongs_to_many :tags
end

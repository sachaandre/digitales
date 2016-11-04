class Variable < ApplicationRecord
  has_and_belongs_to_many :aventures
  has_and_belongs_to_many :indefinitions
end

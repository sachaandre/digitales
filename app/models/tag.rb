class Tag < ApplicationRecord
  has_and_belongs_to_many :aventure
  has_and_belongs_to_many :indefinitions
end

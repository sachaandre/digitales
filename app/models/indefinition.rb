# == Schema Information
#
# Table name: indefinitions
#
#  id         :integer          not null, primary key
#  name       :string
#  def        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Indefinition < ApplicationRecord
  has_and_belongs_to_many :aventures
  has_and_belongs_to_many :variables
  has_and_belongs_to_many :tags
end

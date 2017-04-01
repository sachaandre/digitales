# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  tag_metier :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tag < ApplicationRecord
  has_and_belongs_to_many :aventures
  has_and_belongs_to_many :indefinitions
end

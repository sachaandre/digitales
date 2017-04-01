# == Schema Information
#
# Table name: variables
#
#  id         :integer          not null, primary key
#  name       :string
#  var_def    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Variable < ApplicationRecord
  has_and_belongs_to_many :aventures
  has_and_belongs_to_many :indefinitions
end

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

require 'test_helper'

class VariableTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

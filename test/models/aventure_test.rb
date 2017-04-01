# == Schema Information
#
# Table name: aventures
#
#  id                             :integer          not null, primary key
#  title                          :string
#  aventure_text                  :text
#  aventure_video                 :string
#  aventure_audio                 :string
#  aventure_portrait              :string
#  aventure_illu                  :string
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#  aventure_portrait_file_name    :string
#  aventure_portrait_content_type :string
#  aventure_portrait_file_size    :integer
#  aventure_portrait_updated_at   :datetime
#  first_name                     :text
#  last_name                      :text
#  age                            :integer
#

require 'test_helper'

class AventureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

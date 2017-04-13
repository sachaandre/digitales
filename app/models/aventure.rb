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

require 'elasticsearch/model'

class Aventure < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  has_and_belongs_to_many :indefinitions
  has_and_belongs_to_many :variables
  has_and_belongs_to_many :tags
  belongs_to :country

  has_attached_file :aventure_portrait, styles: { large: '480x600#', medium: '400x500#', thumb: '200x250#' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :aventure_portrait, content_type: /\Aimage\/.*\z/

  validates :title, :first_name, :last_name, :age, presence: { message: 'Ce champs ne doit pas être laissé vide !' }

  # settings index: { number_of_shards: 1 } do
  #   mappings dynamic: 'false' do
  #     indexes :title, analyzer: 'english'
  #     indexes :aventure_text, analyzer: 'english'
  #   end
  # end

end

# # Delete the previous articles index in Elasticsearch
# Aventure.__elasticsearch__.client.indices.delete index: Aventure.index_name rescue nil
#
# # Create the new index with the new mapping
# Aventure.__elasticsearch__.client.indices.create \
#   index: Aventure.index_name,
#   body: { settings: Aventure.settings.to_hash, mappings: Aventure.mappings.to_hash }


Aventure.import force: true

class Aventure < ApplicationRecord
  has_and_belongs_to_many :indefinitions
  has_and_belongs_to_many :variables

  has_attached_file :aventure_portrait, styles: { large: "480x600#", medium: "400x500#", thumb: "200x250#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :aventure_portrait, content_type: /\Aimage\/.*\z/

end

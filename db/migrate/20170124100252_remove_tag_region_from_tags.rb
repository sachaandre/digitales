class RemoveTagRegionFromTags < ActiveRecord::Migration[5.0]
  def change
    remove_column :tags, :tag_region
  end
end

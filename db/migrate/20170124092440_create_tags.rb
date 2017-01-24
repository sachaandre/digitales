class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :tag_metier
      t.string :tag_region

      t.timestamps
    end
  end
end

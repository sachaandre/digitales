class CreateAventures < ActiveRecord::Migration[5.0]
  def change
    create_table :aventures do |t|
      t.string :title
      t.text :aventure_text
      t.string :aventure_video
      t.string :aventure_audio
      t.string :tag_metier
      t.string :tag_region
      t.string :aventure_portrait
      t.string :aventure_illu

      t.timestamps
    end
  end
end

class AddAttachmentAventurePortraitToAventures < ActiveRecord::Migration
  def self.up
    change_table :aventures do |t|
      t.attachment :aventure_portrait
    end
  end

  def self.down
    remove_attachment :aventures, :aventure_portrait
  end
end

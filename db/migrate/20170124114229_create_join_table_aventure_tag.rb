class CreateJoinTableAventureTag < ActiveRecord::Migration[5.0]
  def change
    create_join_table :aventures, :tags do |t|
      # t.index [:aventure_id, :tag_id]
      # t.index [:tag_id, :aventure_id]
    end
  end
end

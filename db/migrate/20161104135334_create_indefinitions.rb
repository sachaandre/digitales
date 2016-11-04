class CreateIndefinitions < ActiveRecord::Migration[5.0]
  def change
    create_table :indefinitions do |t|
      t.string :name
      t.text :def

      t.timestamps
    end
  end
end

class CreateVariables < ActiveRecord::Migration[5.0]
  def change
    create_table :variables do |t|
      t.string :name
      t.text :var_def

      t.timestamps
    end
  end
end

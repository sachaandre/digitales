class ChangeAventure < ActiveRecord::Migration[5.0]
  def change
    add_column :aventures, :first_name, :text
    add_column :aventures, :last_name, :text
    add_column :aventures, :age, :integer
  end
end

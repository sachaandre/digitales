class CreateIndefinitionsAndVariables < ActiveRecord::Migration[5.0]
  def change
    create_table :indefinitions_variables do |t|
      t.belongs_to :indefinition, index: true
      t.belongs_to :variable, index: true
    end

    create_table :aventures_indefinitions do |t|
      t.belongs_to :aventure, index: true
      t.belongs_to :indefinition, index: true
    end

    create_table :aventures_variables do |t|
      t.belongs_to :aventure, index: true
      t.belongs_to :variable, index: true
    end
  end
end

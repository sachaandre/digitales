class CreateJoinTableIndefinitionTag < ActiveRecord::Migration[5.0]
  def change
    create_join_table :indefinitions, :tags do |t|
    end
  end
end

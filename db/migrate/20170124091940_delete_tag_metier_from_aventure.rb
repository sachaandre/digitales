class DeleteTagMetierFromAventure < ActiveRecord::Migration[5.0]
  def change
    remove_column :aventures, :tag_metier, :string
    remove_column :aventures, :tag_region, :string
  end
end

class AddCountryToAventure < ActiveRecord::Migration[5.0]
  def change
    add_reference :aventures, :country, foreign_key: true
  end
end

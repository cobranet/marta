class AddNumToPit < ActiveRecord::Migration
  def change
    add_column :pitanjes, :broj, :integer
  end
end

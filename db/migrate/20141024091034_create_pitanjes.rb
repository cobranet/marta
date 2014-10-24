class CreatePitanjes < ActiveRecord::Migration
  def change
    create_table :pitanjes do |t|
      t.column  :pitanje, :string
      t.timestamps
    end
  end
end

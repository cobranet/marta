class CreateOdgovors < ActiveRecord::Migration
  def change
    create_table :odgovors do |t|
      t.column :pitanje_id, :integer
      t.column :odgovor, :string
      t.timestamps
    end
  end
end

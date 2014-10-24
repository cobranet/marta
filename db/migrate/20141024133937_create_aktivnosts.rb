class CreateAktivnosts < ActiveRecord::Migration
  def change
    create_table :aktivnosts do |t|
      t.column :user_id,:integer
      t.column :pitanje, :integer
      t.column :odgovor, :string
      t.column :rez, :string
      t.column :kad , :datetime
      t.timestamps
    end
  end
end

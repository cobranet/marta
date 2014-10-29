class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.column :naslov,:string
      t.column :image, :string
      t.column :desc, :string
      t.column :link, :string
      t.timestamps
    end
  end
end

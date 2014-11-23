class CreateGuestsLogins < ActiveRecord::Migration
  def change
    create_table :guests_logins do |t|
      t.column :remote_ip, :string
      t.timestamps
    end
  end
end

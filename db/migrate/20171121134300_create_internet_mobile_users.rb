class CreateInternetMobileUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :internet_mobile_users do |t|
      t.integer :year
      t.integer :mobile_users
      t.integer :internet_users

      t.timestamps
    end
  end
end

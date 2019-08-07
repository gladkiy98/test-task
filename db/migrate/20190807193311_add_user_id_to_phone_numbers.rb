class AddUserIdToPhoneNumbers < ActiveRecord::Migration[5.2]
  def change
    add_column :phone_numbers, :user_id, :integer
    add_index :phone_numbers, :user_id
  end
end

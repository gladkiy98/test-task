class CreatePhoneNumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :phone_numbers do |t|
      t.string :number

      t.timestamps
      t.references :user
    end
  end
end

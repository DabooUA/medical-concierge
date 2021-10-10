class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :age
      t.date :born_on
      t.string :address
      t.integer :phone
      t.string :emergency_contact_name
      t.string :emergency_contact_address
      t.string :emergency_contact_phone
      t.string :username
      t.string :email
      t.string :password_digest


      t.timestamps
    end
  end
end

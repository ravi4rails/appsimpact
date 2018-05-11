class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email_address
      t.string :subject
      t.string :message

      t.timestamps
    end
  end
end

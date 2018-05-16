class CreateWorkshopRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :workshop_registrations do |t|
      t.string :name
      t.string :email
      t.string :contact
      t.string :collage_name
      t.string :branch
      t.string :year
      t.string :workshop_title

      t.timestamps
    end
  end
end

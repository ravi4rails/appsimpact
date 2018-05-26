class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :message
      t.string :rating_star
      t.references :user, foreign_key: true
      t.string :cource_name

      t.timestamps
    end
  end
end

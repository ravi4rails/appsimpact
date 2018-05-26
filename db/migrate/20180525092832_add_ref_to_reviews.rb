class AddRefToReviews < ActiveRecord::Migration[5.1]
  def change
    add_reference :reviews, :course, foreign_key: true
  end
end

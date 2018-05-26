class ChangeFieldNameInReview < ActiveRecord::Migration[5.1]
  def change
    rename_column :reviews, :cource_name, :course_name
  end
end

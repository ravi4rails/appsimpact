class AddFieldToCourse < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :course_name, :string
  end
end

class CreateCourseEnquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :course_enquiries do |t|
      t.string :name
      t.string :email
      t.string :contact
      t.string :course_name

      t.timestamps
    end
  end
end

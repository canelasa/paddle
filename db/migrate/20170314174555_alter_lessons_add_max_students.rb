class AlterLessonsAddMaxStudents < ActiveRecord::Migration
  def change
    add_column :lessons, :max_students, :integer
  end
end

class AddTeacherFlagToUsers < ActiveRecord::Migration
  def change
    add_column :users, :teacher_flag, :boolean, default: false, null: false
  end
end

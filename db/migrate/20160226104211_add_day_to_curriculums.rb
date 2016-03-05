class AddDayToCurriculums < ActiveRecord::Migration
  def change
    add_column :curriculums, :day, :integer
  end
end

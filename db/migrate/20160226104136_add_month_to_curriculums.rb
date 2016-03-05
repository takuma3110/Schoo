class AddMonthToCurriculums < ActiveRecord::Migration
  def change
    add_column :curriculums, :month, :integer
  end
end

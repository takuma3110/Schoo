class RemoveDateFromCurriculums < ActiveRecord::Migration
  def change
    remove_column :curriculums, :date, :integer
  end
end

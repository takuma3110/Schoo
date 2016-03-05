class AddPrefNameToCurruculums < ActiveRecord::Migration
  def change
    add_column :curriculums, :pref_name, :string
  end
end

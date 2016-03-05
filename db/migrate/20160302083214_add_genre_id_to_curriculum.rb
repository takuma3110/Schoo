class AddGenreIdToCurriculum < ActiveRecord::Migration
  def change
    add_column :curriculums, :genre_id, :integer
  end
end

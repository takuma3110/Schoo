class RemoveImgUrlFromCurriculums < ActiveRecord::Migration
  def change
    remove_column :curriculums, :img_url, :text
  end
end

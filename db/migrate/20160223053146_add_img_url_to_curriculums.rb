class AddImgUrlToCurriculums < ActiveRecord::Migration
  def change
    add_column :curriculums, :img_url, :text
  end
end

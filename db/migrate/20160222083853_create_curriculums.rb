class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.string    :name
      t.string    :t_name
      t.string    :date
      t.integer   :fee
      t.string    :genre
      t.text    :detail
      t.timestamps
    end
  end
end

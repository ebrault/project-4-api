class CreateDjSets < ActiveRecord::Migration[5.2]
  def change
    create_table :dj_sets do |t|
      t.string :dj
      t.string :title
      t.string :set_type
      t.string :genre
      t.datetime :date

      t.timestamps
    end
  end
end

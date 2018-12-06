class CreateMixes < ActiveRecord::Migration[5.2]
  def change
    create_table :mixes do |t|
      t.string :dj
      t.string :title
      t.string :mix_type
      t.string :genre
      t.datetime :date

      t.timestamps
    end
  end
end

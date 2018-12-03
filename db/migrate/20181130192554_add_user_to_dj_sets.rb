class AddUserToDjSets < ActiveRecord::Migration[5.2]
  def change
    add_reference :dj_sets, :user, foreign_key: true
  end
end

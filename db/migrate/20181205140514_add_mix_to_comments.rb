class AddMixToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :mix, foreign_key: true
  end
end

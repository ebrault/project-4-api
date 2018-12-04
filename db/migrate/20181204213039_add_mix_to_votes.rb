class AddMixToVotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :votes, :mix, foreign_key: true
  end
end

class Vote < ApplicationRecord
  belongs_to :mix
  belongs_to :user
end

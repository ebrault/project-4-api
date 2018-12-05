# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_one :collection
  has_many :mixes
  has_many :votes
  has_many :comments
end

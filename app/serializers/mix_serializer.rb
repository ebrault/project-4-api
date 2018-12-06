class MixSerializer < ActiveModel::Serializer
  attributes :id, :dj, :title, :mix_type, :genre, :date, :votes, :comments
end

class VoteSerializer < ActiveModel::Serializer
  attributes :id, :vote_count, :mix_id
end

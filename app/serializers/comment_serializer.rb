class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment_body, :mix_id
end

class DjSetSerializer < ActiveModel::Serializer
  attributes :id, :dj, :title, :set_type, :genre, :date
end

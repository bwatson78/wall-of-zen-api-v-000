class ImageSerializer < ActiveModel::Serializer
  attributes :id, :url, :name
  has_many :tags
end

class ImageSerializer < ActiveModel::Serializer
  attributes :id, :url, :name, :votecount
  has_many :tags
end

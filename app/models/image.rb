class Image < ApplicationRecord
  has_many :tags
  accepts_nested_attributes_for :tags, allow_destroy: true

  def tags_attributes
    self.try(:tag).try(:tag_name)
  end

  def tags_attributes=(hash)
    hash.each do |k, v|
      v.each do |value|
        tag = Tag.create(tag_name: value)
        self.tags << tag
      end
    end
  end

end

class Tag < ApplicationRecord
  belongs_to :image, optional: true
end

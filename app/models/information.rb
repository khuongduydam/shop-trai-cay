class Information < ApplicationRecord
  has_attached_file :avatar, styles: {normal:"270x150"}
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end

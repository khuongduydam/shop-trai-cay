class Product < ApplicationRecord
  has_attached_file :avatar, styles: {normal: "185x185", thumb: "100x100"}
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end

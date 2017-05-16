class Gallery < ApplicationRecord
  belongs_to :admin_user
  has_attached_file :image
  validates_attachment_file_name :image, :matches => [/_\d+_\d+_\d+\.bin$/]
  validates_uniqueness_of :image_file_name
  has_many :photos , :dependent => :destroy

end

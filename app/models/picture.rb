# == Schema Information
#
# Table name: pictures
#
#  id                 :integer          not null, primary key
#  title              :string
#  position           :integer
#  display            :boolean          default(TRUE), not null
#  imageable_id       :integer
#  imageable_type     :string
#  created_at         :datetime
#  updated_at         :datetime
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Picture < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true, inverse_of: :pictures
  
  has_attached_file :image,
                     :styles => { :small => "300x180", :medium => "700x332>", :large => "748x348", :thumb => "100x100>" },
                     :default_url => ":style/promotion_missing.png",
                     :bucket => ENV["AWS_BUCKET"]
                      
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end


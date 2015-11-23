# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  title       :string
#  url         :string
#  description :text
#  ord         :integer
#  display     :boolean          default(TRUE), not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Article < ActiveRecord::Base
  validates :title, :description, presence: true
  
  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id,
    inverse_of: :projects
  )
  
  include Imageable
  accepts_nested_attributes_for :pictures
end

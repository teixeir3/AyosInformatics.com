# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  title       :string
#  url         :string
#  description :text
#  ord         :integer
#  display     :boolean          default(TRUE), not null
#  created_at  :datetime
#  updated_at  :datetime
#  source_url  :string
#

class Project < ActiveRecord::Base
  validates :title, :url, :description, presence: true
  
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

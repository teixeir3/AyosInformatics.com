# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           not null
#  first_name             :string
#  last_name              :string
#  is_admin               :boolean          default(FALSE), not null
#  password_digest        :string           not null
#  session_token          :string           not null
#  password_reset_token   :string
#  password_reset_sent_at :datetime
#  is_active              :boolean          default(FALSE), not null
#  activation_token       :string           default("INACTIVE"), not null
#  uid                    :string
#  access_token           :string
#  provider               :string
#  oauth_token            :string
#  oauth_expires_at       :datetime
#  fb_image_url           :string
#  display                :boolean          default(TRUE), not null
#  position               :integer
#  title                  :string
#  bio                    :text
#  phone                  :string
#  work_phone             :string
#  home_phone             :string
#  mobile_phone           :string
#  fax                    :string
#  timezone               :string           default("Eastern Time (US & Canada)"), not null
#  created_at             :datetime
#  updated_at             :datetime
#  avatar_file_name       :string
#  avatar_content_type    :string
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

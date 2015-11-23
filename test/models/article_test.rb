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

require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

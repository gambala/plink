require "test_helper"

class LinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: links
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  page_id    :bigint(8)        not null
#
# Indexes
#
#  index_links_on_page_id  (page_id)
#

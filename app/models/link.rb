class Link < ApplicationRecord
  belongs_to :page

  validates :title, presence: true
  validates :url, presence: true, format: {with: URI::DEFAULT_PARSER.make_regexp, message: "is not a valid URL address"}
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

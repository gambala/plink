class Page < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :user
  validates :user, uniqueness: true
end

# == Schema Information
#
# Table name: pages
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#  user_id    :bigint(8)        not null
#
# Indexes
#
#  index_pages_on_slug     (slug) UNIQUE
#  index_pages_on_user_id  (user_id)
#

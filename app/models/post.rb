class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :permalink, use: [:slugged, :history, :finders]
  # validates :permalink, presence: true, uniqueness: true

  def should_generate_new_friendly_id?
    permalink_changed?
  end
end

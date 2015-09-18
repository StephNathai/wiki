class Article < ActiveRecord::Base
  belongs_to :user
  belongs_to :tag

  validates :title, :content, :tag_id, presence: true

end

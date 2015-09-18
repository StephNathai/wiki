class Tag < ActiveRecord::Base
  belongs_to :article
  has_many :articles

validates :title, presence: true

end

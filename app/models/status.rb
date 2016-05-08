class Status < ActiveRecord::Base
  belongs_to :user
  belongs_to :spot

  validates :user_id, presence: true
  validates :spot_id, presence: true
  validates :description, presence: true
  validates_uniqueness_of :user_id, :scope => [:spot_id]
end

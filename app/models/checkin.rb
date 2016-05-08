class Checkin < ActiveRecord::Base
	belongs_to :user
	references :spot

  	validates_uniqueness_of :user_id, :scope => [:spot_id]
end

class Checkin < ActiveRecord::Base
	belongs_to :user
	references :spot
end

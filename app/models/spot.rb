class Spot < ActiveRecord::Base
	has_many :statuses, dependent: :destroy
	has_many :checkins, dependent: :destroy
end

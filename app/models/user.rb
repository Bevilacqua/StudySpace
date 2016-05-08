class User < ActiveRecord::Base
	has_many :statuses, dependent: :destroy
	has_many :checkins, dependent: :destroy
	has_many :ratings, dependent: :destroy
	has_many :sound_level, dependent: :destroy
end

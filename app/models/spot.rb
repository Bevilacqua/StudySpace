class Spot < ActiveRecord::Base
	has_many :statuses, dependent: :destroy
end

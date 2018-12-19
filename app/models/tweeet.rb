class Tweeet < ApplicationRecord
	belongs_to :user, dependent: :destroy
	acts_as_votable
end

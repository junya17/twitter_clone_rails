# frozen_string_literal: true

class Tweeet < ApplicationRecord
  belongs_to :user
  acts_as_votable
end

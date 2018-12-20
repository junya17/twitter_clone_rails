# frozen_string_literal: true

class ApplicationController < ActionController::Base
	before_action :detect_device

	private
	def detect_device
		case request.user_agent
		when 'mobile'
			request.variant = :mobile
		when 'tablet'
			request.variant = :tablet
		end
	end
end

# frozen_string_literal: true

require 'active_repository/configuration'
require 'active_repository/base'
require 'active_repository/github'
require 'active_repository/item'

module ActiveRepository
  def connection
    # e.g: ActiveRepository::Github for :github adapter
    @adapter ||= const_get("active_repository/#{config.adapter}".camelize).new
  end

  module_function :connection
end

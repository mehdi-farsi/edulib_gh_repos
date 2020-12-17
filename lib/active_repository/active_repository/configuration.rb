# frozen_string_literal: true

module ActiveRepository
  mattr_accessor :config

  def configure
    self.config ||= Configuration.new

    yield config if block_given?
  end

  module_function :configure

  class Configuration
    attr_accessor :adapter, :organization

    def initialize
      @adapter = :github
    end
  end
end

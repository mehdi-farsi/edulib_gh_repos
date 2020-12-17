# frozen_string_literal: true

module ActiveRepository
  class Base
    AUTHORIZED_COMMANDS = %I[all].freeze

    def all
      execute(:all)
    end

    protected

    # the execute
    def execute(command, *args)
      items = send("_#{command}", *args) if command.in? AUTHORIZED_COMMANDS
    rescue => error
      puts "#{ActiveRepository.config.adapter.to_s.humanize} service unavailable"
    else
      puts "success"
      items
    end

    def _all
      raise NotImplementedError,
            "#{"active_repository/#{ActiveRepository.config.adapter.to_s.camelize}"}#all not implemented"
    end
  end
end

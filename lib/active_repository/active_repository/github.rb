# frozen_string_literal: true

module ActiveRepository
  class Github < Base
    FIELDS = %I[id name description html_url created_at stargazers_count forks].freeze
    private_constant :FIELDS

    attr :fields

    def initialize
      @fields = FIELDS
    end

    private

    def _all
      repositories = Octokit.organization_repositories(ActiveRepository.config.organization)

      repositories.map { |repository| _initialize_repository(repository) }
    end

    def _initialize_repository(repository)
      Item.new(repository, FIELDS)
    end
  end
end

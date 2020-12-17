class RefreshRepositoriesJob < ApplicationJob
  queue_as :default

  def perform
    external_repositories = ActiveRepository.connection.all

    external_repositories.each do |external_repository|
      repository = Repository.find_or_initialize_by(external_id: external_repository[:id])
      repository.assign_attributes external_repository.except(:id)

      repository.save
    end
  end
end

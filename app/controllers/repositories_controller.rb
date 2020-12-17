class RepositoriesController < ApplicationController
  def index
    @repositories = Repository.alphanum
  end
end

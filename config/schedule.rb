every 1.hour do
  runner "RefreshRepositoriesJob.perform_now", :environment => "development"
end

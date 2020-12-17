every 1.minute do
  runner "RefreshRepositoriesJob.perform_now", :environment => "development"
end

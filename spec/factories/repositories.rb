FactoryBot.define do
  factory :repository do
    name { "rails" }
    description  { "Lorem Ipsum" }
    html_url { 'http://www.example.com' }
    stargazers_count { 10 }
    forks { 2 }
  end
end

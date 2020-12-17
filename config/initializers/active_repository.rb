# frozen_string_literal: true

unless Rails.env.test?
  ActiveRepository.configure do |config|
    config.organization = 'edulib-france'

    # default to :github
    # config.adapter = :github
  end
end

class Repository < ApplicationRecord
  scope :alphanum, -> { order(name: :asc) }
end

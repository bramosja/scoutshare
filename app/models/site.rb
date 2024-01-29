class Site < ApplicationRecord
  belongs_to :location, foreign_key: true
end

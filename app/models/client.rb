class Client < ApplicationRecord
  has_many :movies
  include PgSearch::Model

  pg_search_scope :search_full_text, against: {
    name: 'A',
    id: 'B',
  }
end

class Movie < ApplicationRecord
  belongs_to :client, optional: true
  include PgSearch::Model

  pg_search_scope :search_full_text, against: {
    name: 'A',
    id: 'B'
  }

  def to_s
    self.name
  end
end

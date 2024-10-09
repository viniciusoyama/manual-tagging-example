class Venue < ApplicationRecord
  has_many :taggings, as: :taggable
  has_many :tags, through: :taggings

  has_many :events
end
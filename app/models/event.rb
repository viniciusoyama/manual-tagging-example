class Event < ApplicationRecord
  has_many :taggings, as: :taggable
  has_many :tags, through: :taggings

  belongs_to :venue


  scope :with_tags, -> (tags) { 
    events_with_tags = joins(:tags).where(tags: { id: tags.map(&:id) }) # here we select all events by tag
    all_events_arel = events_with_tags.arel.union(
      Event.joins(:venue).merge(
        Venue.joins(:tags).where(tags: { id: tags.map(&:id) }) # Here we allow joins only with venues with the desired tags
      ).arel
    ) 

    Event.from(all_events_arel.as('events'))
  }
end
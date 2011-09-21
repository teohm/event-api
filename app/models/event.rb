class Event < ActiveRecord::Base
  belongs_to :creator

  has_many :event_guests
end

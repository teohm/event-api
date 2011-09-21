class Event < ActiveRecord::Base
  belongs_to :creator, :class_name => 'User'

  has_many :event_guests
end

class Place < ActiveRecord::Base
  attr_accessible :event_id, :lineup, :title
  belongs_to :event
end

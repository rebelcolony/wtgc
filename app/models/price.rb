class Price < ActiveRecord::Base
  attr_accessible :event_id, :no_queue, :regular, :vip
  belongs_to :event
end

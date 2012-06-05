class Event < ActiveRecord::Base
  attr_accessible :date, :flyer, :title, :url, :price_attributes, :places_attributes
  has_one :price, dependent: :destroy
  has_many :places, dependent: :destroy
  accepts_nested_attributes_for :places
  accepts_nested_attributes_for :price

  default_scope order: "date ASC"

  def self.fetch
  	# data = ClubParser.fetch_all_from :amnesia
  	# if data
	  # 	data[:amnesia][:events].each do |event|
	  # 		Event.create!(event)
	  # 	end
  	# end
    data = ClubParser.fetch_all_from :pacha
    if data
      data[:pacha][:events].each do |event|
        Event.create!(event)
      end
    end
    data = ClubParser.fetch_all_from :space
    if data
      data[:space][:events].each do |event|
        Event.create!(event)
      end
    end
    data = ClubParser.fetch_all_from :esparadis
    if data
      data[:esparadis][:events].each do |event|
        Event.create!(event)
      end
    end
    data = ClubParser.fetch_all_from :privilege
    if data
      data[:privilege][:events].each do |event|
        Event.create!(event)
      end
    end
    data = ClubParser.fetch_all_from :eden
    if data
      data[:eden][:events].each do |event|
        Event.create!(event)
      end
    end
  end
end

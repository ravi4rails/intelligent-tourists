class Location < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{self.name} #{self.city} #{self.state} #{self.postalcode}"
  end

end

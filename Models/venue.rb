class Venue
  attr_accessor :venue_id, :venue_address, :venue_contact, :venue_general_info
  
	def gigs
    @gigs ||= []
  end
  
  def save!
    
  end
end

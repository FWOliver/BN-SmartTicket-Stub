class Artist
  attr_accessor :artist_id, :artist_name, :artist_photo, :artist_description
  
	def gigs
    @gigs ||= []
  end
  
  def save!
    
  end
end

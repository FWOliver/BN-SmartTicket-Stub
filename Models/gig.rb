class Gig
	attr_accessor :gig_id, :gig_title, :gig_begins, :gig_ends

  def venue=(_venue)
    @venue = _venue
    @venue.gigs << self
  end
  
  def artist=(_artist)
    @artist = _artist
    @artist.gigs << self
  end
  
  def user=(_user)
    @user = _user
    @user.gigs << self
  end

  def save!
    
  end
end

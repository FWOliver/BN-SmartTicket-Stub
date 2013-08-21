class User
	attr_accessor :user_id, :user_name, :user_mobile_contact, :user_mobile_handset, :user_email, :user_password, :user_number_of_ticket

	def gigs
    @gigs ||= []
  end
  
  def save!
    
  end
end

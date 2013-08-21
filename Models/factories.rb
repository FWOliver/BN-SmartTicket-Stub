# Generated code
require 'factory_girl'

FactoryGirl.define do
	
  sequence :gig_id do |n|
    n = rand(1...6)
  end

  sequence :event_title do |n|
    title = ["First Gig", "Second Gig", "Third Gig", "Fourth Gig", "Fifth Gig"]
    title[n % title.length]
  end

  sequence :gig_begins do |n|
    Time.now
  end

  sequence :gig_ends do |n|
    Time.now
  end
  
  sequence :venue_id do |n|
    n = rand(0...4)
  end

  sequence :venue_address do |n|
    address = ["London Victoria", "Hyde Park", "Royal Albert Hall", "Westfield Stratford"]
    address[n % address.length]    
  end
  
  sequence :venue_contact do |n|
    447000000000 + n
  end
  
  sequence :venue_general_info do |n|
    info = ["The Venue General info1", "The Venue General info2", "The Venue General info3", "The Venue General info4", "The Venue General info5"]
    info[n % info.length]
  end

  sequence :artist_id do |n|
    n
  end

  sequence :artist_name do |n|
    name = ["The Famous Artist", "The Popular Artist", "The Unknown Artist", "The Vampire Artist", "The Virgin Ladies"]
    name[n % name.length]
  end

  sequence :artist_photo do |n|
    photo = ["Photo of the artist by URLsample1", "Photo of the artist by URLsample2", "Photo of the artist by URLsample3", "Photo of the artist by URLsample4", "Photo of the artist by URLsample5"]
    photo[n % photo.length]
  end

  sequence :artist_description do |n|
    description = ["The Famous Artist", "The Popular Artist", "The Unknown Artist", "The Vampire Artist", "The Virgin Ladies"]
    description[n % description.length]
  end

  sequence :user_id do |n|
    1000000000 + n
  end
  
  sequence :user_name do |n|
    name = ["Matt Dela Cruz", "Oliver Santos", "David Holmes", "Stefano Fanny", "Eva Jenn"]
    name[n % name.length]
  end

  sequence :user_mobile_contact do |n|
    447000000000 + n
  end
  
  sequence :user_mobile_handset do |n|
    name = ["Iphone", "Android", "Android Samsung", "Symbian", "Nokia", "Future Phones"]
    name[n % name.length]
  end

  sequence :user_email do |n|
    "user#{n}@example.com"
  end

  sequence :user_password do |n|
    "PW#{n}Sample"
  end

  sequence :user_number_of_ticket do |n|
    n = rand(1...5)
  end
  
	factory :gig do
    gig_id
    gig_title { generate(:event_title) }
    gig_begins
    gig_ends
    #association :venue, :artist, :user
	end
  
  factory :venue do 
    venue_id
    venue_address
    venue_contact
    venue_general_info 
  end

  factory :artist do 
    artist_id
    artist_name
    artist_photo
    artist_description 
  end

  factory :user do 
    user_id
    user_name
    user_mobile_contact
    user_mobile_handset
    user_email
    user_password
    user_number_of_ticket 
  end
end
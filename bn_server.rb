require 'sinatra'
require 'jbuilder'
require 'json'
require './models/gig'
require './models/venue'
require './models/artist'
require './models/user'
require './models/factories'


before do
   content_type 'application/json'
end

get '/api/gigs/:user_id' do
  
  g = FactoryGirl.build(:gig)
  
  Jbuilder.encode do |json|
    json.gig do
      json.gigId g.gig_id
      json.gigTitle g.gig_title
      json.gigBegins g.gig_begins
      json.gigEnds g.gig_ends
  end
end
end

get '/api/venues/:user_id' do
  
  v = FactoryGirl.build(:venue)
  
  Jbuilder.encode do |json|
    json.venue do
      json.venueId v.venue_id
      json.venueAddress v.venue_address
      json.venueContact v.venue_contact
      json.venueGeneral_info v.venue_general_info
  end
end
end

get '/api/artists/:user_id' do
  
  a = FactoryGirl.build(:artist)
  
  Jbuilder.encode do |json|
    json.gig do
      json.artistId a.artist_id
      json.artistName a.artist_name
      json.artist_photo a.artist_photo
      json.artist_description a.artist_description
  end
end
end

get '/api/users/:user_id' do
  
  l = FactoryGirl.build(:user)
  
  Jbuilder.encode do |json|
    json.gig do
      json.userId l.user_id
      json.userName l.user_name
      json.userMobileContact l.user_mobile_contact
      json.userMobileHandset l.user_mobile_handset
      json.userEmail l.user_email
      json.userPassword l.user_password
      json.userNumberOfTicket l.user_number_of_ticket
  end
end
end

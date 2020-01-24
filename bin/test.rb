require_relative '../config/environment'
$prompt = TTY::Prompt.new
ActiveRecord::Base.logger = nil
require 'wikipedia'
API_KEY = "AIzaSyCfpnCbS4dYgwv-15IBZoiriCu1REPIEA8"

$client = GooglePlaces::Client.new(API_KEY)


google_query = $client.spots_by_query('Pizza near Miami Florida')

binding.pry


# https://maps.googleapis.com/maps/api/place/nearbysearch/json
#   ?location=-33.8670522,151.1957362
#   &radius=500
#   &types=food
#   &name=harbour
#   &key=
namespace :db do
  desc "Fetch country names from an API"
  task fetch_countries: :environment do
    require 'httparty'

    API_URL = "https://restcountries.com/v3.1/all"
    
    response = HTTParty.get(API_URL)

    # Log pentru debug
    puts "HTTP Status: #{response.code}"
    puts "Response Body: #{response.body}"

    if response.success?
      countries = response.parsed_response
      countries.each do |country|
        Country.find_or_create_by!(name: country["name"]["common"])
      end
      puts "✅ Countries added successfully!"
    else
      puts "❌ Failed to fetch countries, Status: #{response.code}"
    end
  end
end

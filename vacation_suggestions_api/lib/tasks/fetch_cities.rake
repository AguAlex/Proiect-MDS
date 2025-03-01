namespace :db do
  desc "Fetch cities from OpenCage API and associate them with countries"
  task fetch_cities: :environment do
    require "httparty"

    API_URL = "https://api.opencagedata.com/geocode/v1/json"
    API_KEY = "11fe7f6ba6584b38a1c2993cf15c9332"  # Înlocuiește cu cheia ta de API OpenCage

    # Obținem toate țările din baza de date
    countries = Country.all

    countries.each do |country|
      # Parametrii pentru a căuta orașele din această țară
      params = {
        "q" => country.name,  # Căutăm pe baza numelui țării
        "key" => API_KEY,  # Cheia de API
        "limit" => 2  # Limitează la primele 10 orașe
      }

      # Facem cererea către API
      response = HTTParty.get(API_URL, query: params, timeout: 180)
      if response.success?
        results = response.parsed_response["results"]

        results.each do |result|
          city_name = result["formatted"]  # Numele orașului

          # Adăugăm orașul în baza de date, legându-l de țara corespunzătoare
          City.find_or_create_by!(
            name: city_name,
            country: country  # Legătura cu țara din baza de date
          )
        end
        puts "✅ Cities for #{country.name} added successfully!"
      else
        puts "❌ Failed to fetch cities for #{country.name}"
      end
    end
  end
end

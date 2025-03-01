namespace :db do
    desc "Populate facilities table with predefined values"
    task add_facilities: :environment do
      facilities = [
        "Free Wi-Fi",
        "Free Parking",
        "Swimming Pool",
        "Breakfast Included",
        "Air Conditioning",
        "24/7 Reception",
        "Wheelchair Accessible",
        "Restaurant",
        "Fitness Center",
        "Fully Equipped Kitchen",
        "Pet Friendly",
        "Flat-screen TV",
        "Spa & Wellness",
        "Room Service",
        "Children's Playground",
        "Airport Shuttle",
        "Laundry Service",
        "Business Center",
        "Bar/Lounge",
        "Private Balcony",
        "Beachfront Access",
        "Sauna",
        "Hot Tub/Jacuzzi",
        "BBQ Facilities",
        "Outdoor Seating Area",
        "Fireplace",
        "Tennis Court",
        "Billiards/Game Room",
        "Bicycle Rental",
        "Tour Desk"
      ]
  
      facilities.each do |facility_name|
        Facility.find_or_create_by(facility_name: facility_name)
      end
  
      puts "Facilities have been successfully added!"
    end
  end
  
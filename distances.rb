def distance_between_locations(locations)

  def distance(location_one, location_two)
    rad_per_deg = Math::PI/180
    radius_in_meters = 6371 * 1000

    dlat_rad = (location_two[0]-location_one[0]) * rad_per_deg
    dlon_rad = (location_two[1]-location_one[1]) * rad_per_deg

    latitude_one_rad, lon1_rad = location_one.map {|i| i * rad_per_deg }
    latitude_two_rad, lon2_rad = location_two.map {|i| i * rad_per_deg }

    calc1 = Math.sin(dlat_rad/2)**2 + Math.cos(latitude_one_rad) * Math.cos(latitude_two_rad) * Math.sin(dlon_rad/2)**2
    calc2 = 2 * Math::atan2(Math::sqrt(calc1), Math::sqrt(1-calc1))

    radius_in_meters * calc2
  end

  locations.each_with_index do |initial_point, initial_index|
    printf "Distance from the point #{initial_index + 1} to: \n"
    locations.each_with_index do |point, index|
      if index != initial_index
        printf "Point #{index + 1}: #{distance(initial_point, point).to_i} meters. \n"
      end
    end
  end
end

#Cases

# Londrina-PR, Paulo Afonso-BA, Aracaju-SE
northeast_locations = [
 [-23.3045386, -51.1689972],
 [-9.5368384, -38.3955786],
 [-11.0059998, -37.1731953]
]

# Lofoten, Svalard, Faroe Islands
norway_locations = [
 [68.2076623, 13.3553959],
 [77.2748151, 14.4892411],
 [61.8982873, 7.5147032]
]

distance_between_locations(northeast_locations)
distance_between_locations(norway_locations)

def calculate_minimum_time(cooking_time, hour_glass_one, hour_glass_two)

  if hour_glass_one < cooking_time || hour_glass_two < cooking_time
    printf "Hourglasses times must be greater than cooking time. \n" 
    return 
  end

  minimum_time = 0
  current_time_one = hour_glass_one
  current_time_two = hour_glass_two

  time_difference = nil
  possible_cook = false

  while time_difference != 0
    if current_time_one > current_time_two
      time_difference = current_time_one - current_time_two
      minimum_time  +=  current_time_two
      current_time_one =  time_difference
      current_time_two =  hour_glass_two
    else
      time_difference = current_time_two - current_time_one
      minimum_time += current_time_one
      current_time_two = time_difference
      current_time_one = hour_glass_one
    end

    if time_difference == cooking_time
      minimum_time += cooking_time
      possible_cook = true
      break
    end
  end

  printf "Mininum time to cook: #{minimum_time} \n" if possible_cook
  printf "Can't cook exactly with these times. \n" unless possible_cook
end

#Cases
calculate_minimum_time(3, 5, 7)
calculate_minimum_time(14, 15, 22)
calculate_minimum_time(5, 8, 10)
calculate_minimum_time(10, 2, 11)

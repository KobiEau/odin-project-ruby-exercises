fruit_counts = { "apple" => 3, "banana" => 7 }

fruit_counts.each do |fruit, count|
  puts "#{fruit}: #{count}"
end

fruit_counts.each_with_index do |(fruit,count),index|
  puts "#{index+1}: #{fruit} #{count}"
end

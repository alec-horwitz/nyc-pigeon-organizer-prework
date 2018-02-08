def nyc_pigeon_organizer(data)
  pigeon_list = []
  data[:gender].each {|gender, pigeons| pigeons.each {|pigeon| pigeon_list.push(pigeon)} }
  # write your code here!
end

def mark_sort(array)   # Takes one argument
  array_max = array.max # Find largest 
  array_min = array.min
  markings = [0] * (array_max - array_min + 1)
  array.each do |a|
    markings[a - array_min] += 1
  end

  res = []
  markings.length.times do |i|
    markings[i].times do
      res << i + array_min
    end
  end

  res
end

my_array = [12, 23, 3, 19, 5, 1, 8, 10]
p mark_sort(my_array)

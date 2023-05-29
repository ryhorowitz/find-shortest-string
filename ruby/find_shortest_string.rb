def find_shortest_string(arr)
  # type your code in here
  shortest = arr[0]

  arr.each do |elem|
    elem.size < shortest.size ? shortest = elem : next
  end

  shortest
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts "=>", find_shortest_string(["aaa", "a", "bb", "ccc"])

  puts

  puts "Expecting: 'hi'"
  puts "=>", find_shortest_string(["cat", "hi", "dog", "an"])

  puts

  puts "Expecting: 'lily'"
  puts "=>", find_shortest_string(["flower", "juniper", "lily", "dadelion"])

  # Don't forget to add your own!

  # BENCHMARK HERE
  start = Time.now
  1000.times do
    find_shortest_string(["flower", "juniper", "lily", "dadelion"])
  end
  benchmark = (Time.now - start) / 1000
  puts "benchmark is #{benchmark}"
end

# Please add your pseudocode to this file
# create shortest variable = the array's first element
# Go through array and visit each element
# at each element analize its size
# if current element has a size smaller than shortest
#     reassign shortest to current element

# at the end of loop return shortest
# And a written explanation of your solution

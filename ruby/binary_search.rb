def binary_search(list, item)
  low = 0
  high = list.length - 1
  count = 1

  while low <= high
    break 'Item not in list' if item > list.length
    mid = (low + high) / 2
    guess = list[mid]
    puts "Guessing: #{guess} of #{count} times"
    if guess == item
      return guess
    elsif guess > item
      high = mid - 1
      count = count.next
    elsif guess < item
      low = mid + 1
      count = count.next
    end
  end
end

searchable_list = (1..512).to_a

puts binary_search(searchable_list, 21)
puts binary_search(searchable_list, 221)

def smallest(list)
  smallestItem = list.first
  smallestIndex = 0

  (0..list.length - 1).each do |idx|
    item = list[idx]
    if item < smallestItem
      smallestItem = item
      smallestIndex = idx
    end
  end

  smallestIndex
end

def selection_sort(list)
  [].tap do |arr|
    until list.empty? do
      (1..list.length).each do
        idx = smallest(list)
        arr << list[idx]
        list.delete_at(idx)
      end
    end
  end
end

puts smallest([5, 2, 77, 32, 15, 29])
puts selection_sort([5, 2, 77, 32, 15, 29])

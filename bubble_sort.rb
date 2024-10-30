def bubble_sort(num_arr)
  sorted_arr = num_arr.map(&:clone)
  swaps = 0.5
  limit = sorted_arr.length - 2

  until swaps == 0 do
    swaps = 0
    for i in 0..limit do
      num = sorted_arr[i]
      next_num = sorted_arr[i+1]
      if num > next_num
        sorted_arr.insert(i+1, sorted_arr.delete_at(i)) 
        swaps += 1
      end
    end
  end
  "Original array: #{num_arr}\nSorted array: #{sorted_arr}"
end

puts bubble_sort([4,3,78,2,0,2])
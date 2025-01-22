def bubble_sort(arr)
  num = arr.length
 
  loop do
    
    sorted = false

    (num-1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = true
      end
    end
    break if not sorted
  end
  arr
end

my_arr = [4,3,78,2,0,2]

p bubble_sort(my_arr)
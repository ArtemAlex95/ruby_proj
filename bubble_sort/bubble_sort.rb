# frozen_string_literal: true

def bubble_sort(array)
  length = array.length

  loop do
    swapped = false

    (length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break unless swapped
  end

  array
end

array = [4, 3, 78, 2, 0, 2, 13, 123, 15, 25, 14, 176]

p bubble_sort(array)
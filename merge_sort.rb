def merge_sort(array)
  return array if array.length < 2

  left_half = merge_sort(array[0...(array.length / 2)])
  right_half = merge_sort(array[(array.length / 2)..-1])

  result = []

  loop do
    if left_half.first < right_half.first
      result << left_half.shift
    else
      result << right_half.shift
    end

    if left_half.empty?
      result.concat(right_half)
      break
    elsif right_half.empty?
      result.concat(left_half)
      break
    end
  end
  result
end

puts merge_sort([7, 8, 2, 4, 22, 55, 1, 25, 100])

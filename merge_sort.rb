def merge_two (left, right)
  compared = []
  while !left.empty? || !right.empty?
    if left.empty?
      compared << right.shift until right.empty?
    elsif right.empty?
      compared << left.shift until left.empty?
    elsif left[0] > right[0]
      compared << right.shift
    elsif left[0] < right[0]
      compared << left.shift
    else
      compared << left.shift
      compared << right.shift
    end
  end
  return compared
end

def merge_sort array
  if array.length < 2
    puts "Returned singular value #{array}"
    return array
  else
    left_hand = merge_sort(array.shift(array.length/2))
    right_hand = merge_sort(array)
    puts "Merging left: #{left_hand} and right: #{right_hand}"
    return merge_two(left_hand, right_hand)
  end
end

merge_sort([6,1,4,3,8,5,2,7])

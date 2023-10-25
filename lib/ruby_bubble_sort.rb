# Assignment 2 - Build a method #merge_sort that takes in an array and
# returns a sorted array, using a recursive merge sort methodology.

def split_array(array)
  array.each_slice((array.length.to_f / 2).ceil).to_a
end
  
def merge_sort(array)
  return array if array.length <= 1

  left, right = split_array(array)
  left = merge_sort(left)
  right = merge_sort(right)

  merge(left, right)
end

def merge(left, right)
  result = []

  until left.empty? || right.empty?
    result << (left.first < right.first ? left.shift : right.shift)
  end

  result.concat(left).concat(right)
end

array = [411, 26, 77, 19, 21, 88, 12]
sorted_array = merge_sort(array)
puts sorted_array.inspect
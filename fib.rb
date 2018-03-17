def fib n
  index = 0
  total = 0
  array = [0,1,1]
  while index <= n do
    total = array[index]
    index += 1
    array[index] = array[index-1] + array[index-2] if index > 2
  end
  return total
end

puts fib(8)

#0, 1, 1, 2, 3, 5, 8, 13, 21

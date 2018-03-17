def fib_rec n
  return 0 if n == 0
  return 1 if n == 1 || 2
  return fib_rec(n-2) + fib_rec(n-1)
end

puts fib_rec(7)

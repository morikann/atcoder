def fibonacci_list(n, t0, t1, t2):
  fib = [t0, t1, t2]
  if n == 1:
    fib = [t0]
  elif n == 2:
    fib = [t0, t1]
  else:
    for i in range(3, n):
      fib.append(fib[i-1]+fib[i-2]+fib[i-3])
  return fib

fib = fibonacci_list(30, 1, 0, 5)
print(fib)
print(fib[27])
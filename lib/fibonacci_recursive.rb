def recursive_fibonacci_at(n)
  return 0 if n == 1
  return 1 if n == 2

  recursive_fibonacci_at(n - 1) + recursive_fibonacci_at(n - 2)
end

def fibs_recursive(target)
  target.times.map { |i| recursive_fibonacci_at(i + 1) }
end

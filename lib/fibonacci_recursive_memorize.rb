def recursive_dynamic_fibonacci_at(n, memory)
  return memory[n] if memory[n]
  return 0 if n == 1
  return 1 if n == 2

  result = recursive_dynamic_fibonacci_at(n - 1, memory) + recursive_dynamic_fibonacci_at(n - 2, memory)
  memory[n] = result
end

def fibs_dynamic(target)
  memory = {}
  target.times.map { |i| recursive_dynamic_fibonacci_at(i + 1, memory) }
end

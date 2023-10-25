def is_prime?(num)
  return false if num <= 1
  return true if num == 2
  return false if num.even?

  (3..Math.sqrt(num)).step(2).each do |i|
    return false if num % i == 0
  end

  true
end

def find_primes(n)
  primes = [2]
  current_number = 3

  while primes.length < n
    primes << current_number if is_prime?(current_number)
    current_number += 2
  end

  primes
end

primes = find_primes(50)

primes.each do |prime|
  puts prime
end

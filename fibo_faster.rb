# Initialize the memoization array
@scratchpad = []
@max_fibo_size = 50

(1..@max_fibo_size).each do |i|
	@scratchpad[i] = :notcalculated
end

# Calculate the nth Fibonacci number, f(n).

def fibo (n)
	if n > @max_fibo_size
		return "n must be #{@max_fibo_size} or less."
	elsif n <= 1
		return n
	elsif @scratchpad[n] != :notcalculated
		return @scratchpad[n]
	end
end

# Display the Fibonacci sequence.
(1..50).each do |number|
	puts "fibonacci(#{number}) = #{fibo(number)}"
end

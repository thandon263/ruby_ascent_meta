def fibo(n)
	if n <= 1
		return n
	else
		value = fibo(n-1)+fibo(n-2)
		return value
	end
end

(1..40).each do |number|
	puts "Fibonacci(#{number}) = #{fibo(number)}"
end
		
# This is very slow implication of the fibonacci sequence


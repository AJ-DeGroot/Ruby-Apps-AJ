class Fibonacci
	def iterative_fib(number)
		sequence = []

		0.upto(number) do |n|
			if n.zero?
				sequence << 0
			elsif n == 1
				sequence << 1
			else
				sequence << (sequence[n - 1] + sequence[n - 2])
			end
		end

		sequence
	end

	def recursive_fib(number)
		return 0 if number.zero?
		return 1 if number == 1

		recursive_fib(number - 1) + recursive_fib(number - 2)
	end
end

fib = Fibonacci.new

# 1, 1, 2, 3, 5, 8, 13, 21, 34

require 'benchmark'

num = 35

Benchmark.bm do |x|
  x.report('recursive_fib') { fib.recursive_fib(num) }
  x.report('iterative_fib') { fib.iterative_fib(num) }
end

module Luhn
	def self.is_valid?(number)
		doubled_array = []
		cc_array = number.to_s.split(//)
		number_legnth = cc_array.count
		number_legnth.times do

			if doubled_array.count.odd?
				check_subtract_nine = cc_array.pop.to_i * 2
				if check_subtract_nine.to_i >= 10
					doubled_array.unshift(check_subtract_nine - 9)
				else
					doubled_array.unshift(check_subtract_nine)
				end
			else
				doubled_array.unshift(cc_array.pop)
			end	

		end
		print doubled_array
		cc_sum = 0

		doubled_array.each do |d|
			# "print #{d}"
			cc_sum = cc_sum + d.to_i
		end
		# print "this is the sum #{@cc_sum}"

		if cc_sum.to_i % 10 == 0
			true
		else
			false
		end
	end
end

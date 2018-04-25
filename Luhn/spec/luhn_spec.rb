require 'spec_helper'

RSpec.describe Luhn do
	describe '.is_valid?' do
		it 'returns true if the number is valid' do
			expect(Luhn.is_valid?(4194560385008504)).to eq true
		end

		it 'returns false if the number is not valid' do
			expect(Luhn.is_valid?(4194560385008505)).to eq false
		end

		it 'gives the wrong answer if you begin on the left side for valid numbers' do
			expect(Luhn.is_valid?(377681478627336)).to eq true
		end

		it 'gives the wrong answer if you begin on the left for invalid numbers' do
			expect(Luhn.is_valid?(377681478627337)).to eq false
		end
	end
end

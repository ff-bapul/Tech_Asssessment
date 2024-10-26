# spec/your_code_spec.rb
require 'spec_helper'
require_relative '../string_calculator'  # Adjust the path as needed

# string_calculator_spec.rb
require './string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end
  end
end


require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'

describe "Testing FizzBuzz" do

  it 'must return "Fizz" for multiples of 3 and not multiples of 5' do
    expect( FizzBuzz::Fizzbuzz.fizzbuzz(3) ).must_equal("Fizz")
    expect( FizzBuzz::Fizzbuzz.fizzbuzz(6) ).must_equal("Fizz")
    expect( FizzBuzz::Fizzbuzz.fizzbuzz(36) ).must_equal("Fizz")
  end

  it 'It must raise an ArgumentException if given a non-Fixnum' do
    expect( proc { Fizzbuzz::Fizzbuzz.fizzbuzz(" Something") }).must_raise ArgumentException
  end

  it 'must return "buzz" for multiples of 5 and not multiples of 3'
    expect( FizzBuzz::Fizzbuzz.fizzbuzz(5) ).must_equal("buzz")
    expect( FizzBuzz::Fizzbuzz.fizzbuzz(10) ).must_equal("buzz")
    expect( FizzBuzz::Fizzbuzz.fizzbuzz(20) ).must_equal("buzz")
  end

  it 'must return "Fizzbuzz" for numbers that are both multiples of 5 and multiples of 3'
    expect( FizzBuzz::Fizzbuzz.fizzbuzz(15) ).must_equal("Fizzbuzz")
    expect( FizzBuzz::Fizzbuzz.fizzbuzz(30) ).must_equal("Fizzbuzz")
    expect( FizzBuzz::Fizzbuzz.fizzbuzz(45) ).must_equal("Fizzbuzz")
  end

  it 'must return number as a string in digit form for numbers that are not multiples of 3 or 5.'
    expect( FizzBuzz::Fizzbuzz.fizzbuzz(4) ).must_equal("4")
    expect( FizzBuzz::Fizzbuzz.fizzbuzz(8) ).must_equal("8")
    expect( FizzBuzz::Fizzbuzz.fizzbuzz(101) ).must_equal("101")
  end

end

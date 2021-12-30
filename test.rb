require 'test/unit'
require './palindrome'

extend Test::Unit::Assertions

assert_equal false, "issou".palindrome?
assert_equal true,  "kayak".palindrome?

assert_equal false, "rire".palindrome?
assert_equal true,  "noon".palindrome?

assert_equal false, "boy".palindrome?
assert_equal true,  "bob".palindrome?

assert_equal false, "ij".palindrome?
assert_equal true,  "ii".palindrome?

assert_equal true,  "i".palindrome?
assert_equal true,  "".palindrome?

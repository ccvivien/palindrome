require 'test/unit'
require './palindrome'

extend Test::Unit::Assertions

assert_equal false, "issou".palindrome?
assert_equal false, "rire".palindrome?
assert_equal true,  "kayak".palindrome?
assert_equal true,  "bob".palindrome?

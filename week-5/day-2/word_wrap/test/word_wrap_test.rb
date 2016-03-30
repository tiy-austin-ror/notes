require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/word_wrap.rb'


class WordWrapTest < Minitest::Test
  def test_smoke
    assert(1 + 1)
  end

  def test_responds_to_wrap
    assert_respond_to(WordWrap.new, :wrap)
  end

  def test_wrap_with_0_columns
    assert_equal("x", WordWrap.new.wrap("x", 0))
    assert_equal("xx", WordWrap.new.wrap("xx", 0))
    assert_equal("Hello World", WordWrap.new.wrap("Hello World", 0))
  end

  def test_wrap_with_one_columns
    assert_equal("x", WordWrap.new.wrap("x", 1))
    assert_equal("x\nx", WordWrap.new.wrap("xx", 1))
    assert_equal("x\nx\nx", WordWrap.new.wrap("xxx", 1))
    assert_equal("x\nx\nx\nx", WordWrap.new.wrap("xxxx", 1))
  end

  def test_wrap_multiple_columns
    assert_equal("x", WordWrap.new.wrap("x", 2))
    assert_equal("xx", WordWrap.new.wrap("xx", 2))
    assert_equal("xx\nx", WordWrap.new.wrap("xxx", 2))
    assert_equal("xx\nxx", WordWrap.new.wrap("xxxx", 2))
    assert_equal("xx\nxx\nx", WordWrap.new.wrap("xxxxx", 2))


    assert_equal("xxxx\nx", WordWrap.new.wrap("xxxxx", 4))

    assert_equal("hello \nworld", WordWrap.new.wrap("hello world", 6))
  end

  def test_does_not_break_words
    #...to..be..continued
  end

  def test_removes_empty_leading_whitespace
    #...to..be..continued
  end

end

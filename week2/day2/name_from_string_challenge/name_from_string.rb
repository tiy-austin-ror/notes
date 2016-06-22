require 'minitest/autorun'
require 'minitest/pride'

# Write two methods, each method will take one argument:
#
#   * `first_name`: given a name in string, return the first name.
#   * `last_name`: given a name in string, return the last name.

# WRITE YOUR CODE BELOW HERE.
def first_name(name)
    return '' if name.nil?
    name_pieces = name.split
    if name_pieces.count > 1
        name_pieces[0..-2].join(' ')
    else
        name_pieces.first.to_s
    end
end

def last_name(name)
    return '' if name.nil?
    name_pieces = name.split
    if name_pieces.count > 1
        name_pieces[-1].to_s
    else
        ''
    end
end

# WRITE YOUR CODE ABOVE HERE.

class StringSplitChallenge < MiniTest::Test
    def test_first_name
        assert_equal 'Mason', first_name('Mason Matthews')
    end

    def test_last_name
        assert_equal 'Matthews', last_name('Mason Matthews')
    end

    def test_one_word_name
        assert_equal 'deadmou5', first_name('deadmou5')
        assert_equal '', last_name('deadmou5')
    end

    def test_three_word_name
        assert_equal 'John Quincy', first_name('John Quincy Adams')
        assert_equal 'Adams', last_name('John Quincy Adams')
    end

    def test_no_word_name
        assert_equal '', first_name('')
        assert_equal '', last_name('')
    end

    def test_nil_name
        assert_equal '', first_name(nil)
        assert_equal '', last_name(nil)
    end
end

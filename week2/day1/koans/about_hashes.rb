require File.expand_path(File.dirname(__FILE__) + '/neo')
class AboutHashes < Neo::Koan
  def test_creating_hashes
    empty_hash = Hash.new
    assert_equal Hash, empty_hash.class
    assert_equal({}, empty_hash)
    assert_equal 0, empty_hash.size
  end
  def test_hash_literals
    hash = { :one => "uno", :two => "dos" }
    assert_equal 2, hash.size
  end
  def test_accessing_hashes
    hash = { :one => "uno", :two => "dos" }
    assert_equal "uno", hash[:one]
    assert_equal "dos", hash[:two]
    assert_equal nil, hash[:doesnt_exist]
  end
  def test_accessing_hashes_with_fetch
    hash = { :one => "uno" }
    assert_equal "uno", hash.fetch(:one)
    assert_raise(Exception) do
      hash.fetch(:doesnt_exist)
    end
    # THINK ABOUT IT:
    #
    # Why might you want to use #fetch instead of #[] when accessing hash keys?
  end
  def test_changing_hashes
    hash = { :one => "uno", :two => "dos" }
    hash[:one] = "eins"
    expected = { :one => "eins", :two => "dos" }
    assert_equal({ :one => "eins", :two => "dos" }, hash)
    # Bonus Question: Why was "expected" broken out into a variable
    # rather than used as a literal?
  end
end

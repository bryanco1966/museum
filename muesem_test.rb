require "minitest/pride"
require "minitest/autorun"
require "./lib/muesem"
require "pry"

class MuesemTest < Minitest::Test


  def test_instance_of_museum
    muesem = Muesem.new("Denver Muesem of Nature and Science")

    assert_instance_of Muesem, muesem
  end

  def test_muesem_has_a_name
    muesem = Muesem.new("Denver Muesem of Nature and Science")

    assert_equal "Denver Muesem of Nature and Science", muesem.name
  end

  def test_muesem_starts_with_no_exhibits
    muesem = Muesem.new("Denver Muesem of Nature and Science")

    assert_equal [], muesem.exhibits
  end

  def test_add_exhibit
    muesem = Muesem.new("Denver Muesem of Nature and Science")
    muesem.add_exhibit("Dead Sea Scroll", 10)
    muesem.add_exhibit("Gems and Minerals", 0)

    assert_equal [["Dead Sea Scroll", 10], ["Gems and Minerals", 0]], muesem.exhibits
  end


end

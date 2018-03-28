require "minitest/pride"
require "minitest/autorun"
require "./lib/patron"
require "pry"

class PatronTest < Minitest::Test

  def test_patron_exists
    patron = Patron.new("Bob")

    assert_instance_of Patron, patron
  end

  def test_patron_has_a_name
    patron = Patron.new("Bob")

    assert_equal "Bob", patron.name
  end

  def test_patron_has_no_interest_to_start
    patron = Patron.new("Bob")

    assert_equal [], patron.interests
  end

  def test_we_can_add_interests
    patron = Patron.new("Bob")
    patron.add_interests("Dead Sea Scrolls")
    patron.add_interests("Gems and Minerals")

    assert_equal ["Dead Sea Scrolls", "Gems and Minerals"], patron.interests
  end


end

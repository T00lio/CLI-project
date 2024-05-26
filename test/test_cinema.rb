require 'minitest/autorun'
require_relative '../cinema.rb'

class CinemaTest < Minitest::Test
  def setup
    @cinema = Cinema.new
  end

  def test_add_movie
    initial_count = @cinema.instance_variable_get(:@movies).size
    @cinema.send(:add_movie, "Inception", "Christopher Nolan")
    assert_equal initial_count + 1, @cinema.instance_variable_get(:@movies).size
  end
end

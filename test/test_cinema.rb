require 'minitest/autorun'
require_relative '../cinema'
require 'stringio'

class CinemaTest < Minitest::Test
  def setup
    @cinema = Cinema.new
  end

  def test_add_movie
    $stdin = StringIO.new("Star Wars\nGeorge Lucas\n")
    assert_changes -> { @cinema.instance_variable_get(:@movies).size }, from: 0, to: 1 do
      @cinema.send(:add_movie)
    end
    movie = @cinema.instance_variable_get(:@movies).last
    assert_equal "Star Wars", movie.title
    assert_equal "George Lucas", movie.director
  ensure
    $stdin = STDIN
  end

  def test_list_movies
    @cinema.instance_variable_set(:@movies, [Movie.new("Star Wars", "George Lucas")])
    $stdout = StringIO.new
    @cinema.send(:list_movies)
    output = $stdout.string
    assert_includes output, "Star Wars"
    assert_includes output, "George Lucas"
  ensure
    $stdout = STDOUT
  end
end

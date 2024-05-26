class Movie
  attr_reader :title, :director

  def initialize(title, director)
    @title = title
    @director = director
  end

  def to_s
    "#{@title} directed by #{@director}"
  end
end

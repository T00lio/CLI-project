class Movie
  attr_accessor :title, :director

  def initialize(title, director)
    @title = title
    @director = director
  end

  def to_s
    "#{@title} by #{@director}"
  end
end

require_relative "movie"


class Cinema
  def initialize
    @movie = []
  end

  def run
    loop do
      puts "\n"
      puts "Welcome to the CLI Cinema!"
      puts "1. Add a Movie"
      puts "2. List all Movies"
      puts "3. Exit"
      print "Choose an option: "
      option = gets.chomp.to_i
      puts "\n"
      case option
      when 1
        add_movie
      when 2
        list_movies
      when 3
        puts "Thank you for visiting the CLI cinema. adios!"
        break
      else
        puts "Invalid option. Please try again."
      end
    end
  end

  private

  def add_movie
    print "Enter movie title: "
    title = gets.chomp
    print "Enter director name: "
    author = gets.chomp
    @movie << Movie.new(title, director)
    puts "Movie added successfully!"
  end

  def list_movies
    puts "Movies in the cinema:"
    @movies.each do |movie|
      puts movie
    end
  end
end

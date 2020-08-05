#
# DATA/STATE/PROPERTIES
# name
# genre
# instruments
# high
# age
# dead
#
# BEHAVIOUR
# perform
# take_drugs
# dead if older than 27
# play (instrument)

class Musician
  attr_reader :name, :genre
  attr_writer :instruments

  def initialize(name, genre, age)
    @name = name
    @genre = genre
    @age = age
    @high = false
    @dead = false
    @instruments = []
  end

  def high? # Reader
    @high
  end

  def dead? # Reader
    @dead
  end

  def take_drugs!
    @high = true
    die! if @age == 27
  end

  def play(instrument)
    # check if musician knows this instrument
    # return if !can_play?
    if can_play?(instrument)
      "Playing the #{instrument}... 🎼"
    else
      "I don't know how to play the #{instrument}"
    end
  end

  def perform
    @instruments.map { |instrument| play(instrument) }
  end

  private

  def die!
    @dead = true
  end

  def can_play?(instrument)
    @instruments.include?(instrument)
  end
end









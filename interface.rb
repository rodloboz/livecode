require_relative "musician"

jimi = Musician.new("Jimi Hendrix", "Rock", 27)
jimi.instruments = ["guitar", "bass", "drums"]

puts jimi.play("guitar")
puts jimi.play("violin")

puts jimi.perform

puts jimi.take_drugs!
puts jimi.dead?

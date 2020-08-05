require_relative "../musician"

RSpec.describe Musician do
  describe "instance variables" do
    subject(:musician) { Musician.new("Jimi Hendrix", "Rock", 26) }

    it "should respond to #name" do
      expect(musician.name).to eq("Jimi Hendrix")
    end

    it "should respond to #genre" do
      expect(musician.genre).to eq("Rock")
    end

    it "should respond to #high?" do
      expect(musician.high?).to eq(false)
    end

    it "should have a setter for instruments" do
      expect(musician.respond_to?(:instruments=)).to eq(true)
    end

    it "should get high if the instance take drugs" do
      musician.take_drugs!

      expect(musician.high?).to eq(true)
    end

    it "should die if taking drugs at 27" do
      musician.take_drugs!
      expect(musician.dead?).to eq(false)

      cursed_musician = Musician.new("Jimi Hendrix", "Rock", 27)
      cursed_musician.take_drugs!

      expect(cursed_musician.dead?).to eq(true)
    end
  end
end

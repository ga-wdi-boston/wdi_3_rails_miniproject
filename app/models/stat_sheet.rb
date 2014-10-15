class StatSheet < ActiveRecord::Base
  belongs_to :character

  def self.roll(character)
    StatSheet.create(
      hp: rand(10..15),
      sp: rand(8..12),
      attack: rand(7..10),
      defense: rand(7..10),
      speed: rand(7..10),
      character_id: character.id
    )
  end
end

require 'rails_helper'

RSpec.describe Party, :type => :model do

  before(:all) do
    @munchkins = Party.create(name: "Munchkins", goal: "Loot literally everything", motto: "FBGMST")

    @healbot = @munchkins.characters.create(name: 'Healbot', job: :healer)
    @slashy = @munchkins.characters.create(name: 'Slashy', job: :dps)
    @stabby = @munchkins.characters.create(name: 'Stabby', job: :dps)
    @nukey = @munchkins.characters.create(name: 'Nukey', job: :dps)
    @chunky = @munchkins.characters.create(name: 'Chunky', job: :tank)
  end

  describe "instance" do
    it "outputs characters in order of job" do

      pending "having trouble figuring out how to do this"

      # this is so i can just go Party.characters.each do |character|
      # and assume that it will go in tank->dps->healer order

      # ...how do i do this, though?

      characters = @munchkins.characters.map do |character|
        character.name
      end

      expect(characters).to eq([
        @chunky.name,
        @slashy.name,
        @stabby.name,
        @nukey.name,
        @healbot.name
      ])
    end
  end
end

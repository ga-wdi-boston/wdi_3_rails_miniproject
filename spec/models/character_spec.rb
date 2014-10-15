require 'rails_helper'

RSpec.describe Character, :type => :model do

  before(:all) do
    @munchkins = Party.create(name: "Munchkins", goal: "Loot literally everything", motto: "FBGMST")

    @healbot = @munchkins.characters.create(name: 'Healbot', job: :healer)
    @slashy = @munchkins.characters.create(name: 'Slashy', job: :dps)
    @stabby = @munchkins.characters.create(name: 'Stabby', job: :dps)
    @nukey = @munchkins.characters.create(name: 'Nukey', job: :dps)
    @chunky = @munchkins.characters.create(name: 'Chunky', job: :tank)
  end

  describe "instance" do
    it "outputs job as a properly formatted string" do
      jobs = [@chunky, @nukey, @healbot].map do |character|
        character.job
      end

      expect(jobs).to eq(["Tank", "DPS", "Healer"])

    end
  end
end

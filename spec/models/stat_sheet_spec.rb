require 'rails_helper'

RSpec.describe StatSheet, :type => :model do
  it "rolls stats for a new character" do
    character = Character.create(name: 'Bucko', job: :dps, party_id: 2)
    expect(character.stats).to be_a(Array)
  end
end

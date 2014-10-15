munchkins = Party.create(name: "Munchkins", goal: "Loot literally everything", motto: "FBGMST")

healbot = munchkins.characters.create(name: 'Healbot', job: :healer)
slashy = munchkins.characters.create(name: 'Slashy', job: :dps)
stabby = munchkins.characters.create(name: 'Stabby', job: :dps)
nukey = munchkins.characters.create(name: 'Nukey', job: :dps)
chunky = munchkins.characters.create(name: 'Chunky', job: :tank)
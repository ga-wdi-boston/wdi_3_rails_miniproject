# Party Generator

I've decided to use my old party/character generator as a base for this new Rails project.

First thing to think of is, what are my models?

# Party

A Party has a name, a goal, and a motto.

Name is a string.

Goal is a string (basically a sentence).

Ditto for motto.

A Party has many Characters.

# Character

A Character has a name, a class, and stats. The name is a string, the class is a symbol, and the stats are...a hash? No, fuck that. If I make it a hash, it might as well be its own Model. Alright, we'll leave stats for later: A Character has a name, and a class.

Name is a string.

Class is also a string, although it will be passed around as a symbol.

This is terribly simplistic, but we'll go with this for now.

# Specifications

I need practice learning how to write these!

## Party

* Outputs a list of characters in order of their job.
  * e.g., tanks, then dips, then healers.
  * So I'd go Party.characters.each |character| puts character.name character.job etc. and it'd be in order.
  * Having trouble figuring this out. The order is:
    * Tank
    * DPS
    * Healer
  * but I don't quite know how to say "tank comes before dps comes before healer".

## Character

* Outputs job attribute as a properly formatted string.
  * e.g. :tank --> "Tank", :dps --> "DPS", :healer -> "Healer"
  * Is there a nicer way to do this than a conditional statement?

# Testing Controllers and Views

I understand the concept behind testing Models, but testing Controllers and Views is a little different...

# Stats

I want each character to have randomly generated stats.

* HP
* SP
* Attack
* Defense
* Speed

Should I make a stats model? A character's stats will basically look like this:

    stats = {
      hp: 10,
      sp: 10,
      attack: 10,
      defense: 10,
      speed: 10
    }

If it's basically a hash, shouldn't I just make stats its own model?

    class StatSheet < ActiveRecord::Base
      belongs_to :character
    end
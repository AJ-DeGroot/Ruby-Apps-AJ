class Hooman
  attr_accessor :name, :age, :eye_color, :hair_color
  def movement
    'Muscle functions are at maximum!'
  end

  def consume_energy
    'These dang muscles use my energy, curses.'
  end

  def functional
    'I have a purpose, probably.'
  end

  def breathe
    "I'll die if I stop breathing, halp."
  end

  def eat
    'Ohm Nom'
  end
end

class New_Born < Hooman
  def cries
    'Something upsets me and now you have to deal with it too.'
  end
end

class Toddler < New_Born
  def trouble_maker
    "Constantly making life hard, but I'm adorable still so you'll put up with me."
  end

  def wanderer
    "I'll just slip on out of view and give you a heart attack just trying to find me"
  end
end

class AwkwardInbetweenToddlerAndTeenPhaseThatICantThinkOfANameFor < Hooman
  def sassy
    'I know things now and I plan to make sure you know I know stuff'
  end

  def money_please
    "I need money it's important!"
  end
end

class Teen < AwkwardInbetweenToddlerAndTeenPhaseThatICantThinkOfANameFor
  def you_dont_understand
    'Nobody understands me!'
  end
end

class Adult < Hooman
  def work
    'Today was rough, I need a beer'
  end

  def play
    'Yay beer'
  end

  def pay_bills
    "This stresses me out, I'm gonna have a beer"
  end
end

class MidLife < Hooman
  def crisis
    "Look at my new car, I'm totally not having a mental breakdown"
  end

  def beer
    'All time is the best time for beer'
  end
end

class AlmostDead < Hooman
  def no_filter
    "Some racist or prejudice phrase because I'm old and it's funny."
  end
end

class Dead
  def lay_still
    'R.I.P.'
  end
end

def character(person, name, age, eyes, hair)
  person.name = name
  person.age = age
  person.eye_color = eyes
  person.hair_color = hair
end

def information(person)
  puts "Name: #{person.name}"
  puts "Age: #{person.age}"
  puts "Hair: #{person.hair_color}"
  puts "Eyes: #{person.eye_color}"
end

fanny = Adult.new
bob = AlmostDead.new
stewie = Toddler.new
evie = Teen.new

character(fanny, 'Fanny', '28', 'brown', 'blonde')
character(bob, 'Bob', '78', 'green', 'white')
character(stewie, 'Stewie', '2', 'blue', 'blonde')
character(evie, 'Evie', '16', 'blue', 'black')

puts''
information(fanny)
puts "#{fanny.movement} #{fanny.breathe} #{fanny.pay_bills} #{fanny.play}"
puts ''
information(bob)
puts "#{bob.no_filter} #{bob.consume_energy} #{bob.eat}"
puts ''
information(stewie)
puts "#{stewie.trouble_maker} #{stewie.cries}"
puts ''
information(evie)
puts "#{evie.sassy} #{evie.you_dont_understand} #{evie.breathe}"
puts ''

# Chapter 13

# Interactive Baby Dragon

class Dragon
  def initialize(name)
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0
    puts "#{name} is born."
    @alive = true
  end

  def feed
    puts "You feed #{@name}"
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}"
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} into the air."
    puts "He giggles, which singes your eyebrows."
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "... but wakes when you stop."
    end
  end

  def alive?
    @alive
  end

  def method_dispatch(command)
    case command
    when "feed" then feed
    when "walk" then walk
    when "put_to_bed" then put_to_bed
    when "toss" then toss
    when "rock" then rock
    when "kill"
      @alive = false
      puts "You killed your baby dragon, #{@name}"
    else
      puts "Sorry that's not a valid command:"
    end
  end 

  private

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} is starving!  In desperation he ate you!"
      @alive = false
      exit
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end
    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end
    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} does the potty dance..."
    end
  end
end

pet = Dragon.new('Norbert')
while pet.alive?
  puts "Please enter a command for your dragon, #{@name}."
  puts "Type in a command: (e.g. feed, walk, put_to_bed, rock, toss, kill)"
  command = gets.chomp.downcase
  pet.method_dispatch(command)
end
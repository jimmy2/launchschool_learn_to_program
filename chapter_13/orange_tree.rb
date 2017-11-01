# Chapter 13

# Orange Tree

class OrangeTree

  def initialize
    @height = 0.1
    @age = 0
    @orange_count = 0
    @tree_alive = true
  end

  def status
    if @tree_alive
      puts "The tree is #{@height}m tall."
      puts "The tree is #{@age} years old."
    else
      puts "Sorry, the tree died of old age"
      exit
    end
  end

  def produce_fruit
    if @age > 4 && @tree_alive
      new_oranges = rand(1..10)
      @orange_count += new_oranges
      puts "The tree produced #{new_oranges} new oranges this year."
    end
  end

  def pick_an_orange
    if @orange_count >= 1
      @orange_count -= 1
      puts "You picked an orange, there are now #{@orange_count} left."
    else
      puts "The tree doesn't have any oranges."
    end
  end

  def one_year_passes
    @age += 1
    @height += rand(1..6)
    if @age > 12
      die
    else
      produce_fruit
    end
  end

  private

  def height?
    @height
  end

  def age?
    @age
  end

  def die
    @tree_alive = false
    @orange_count = 0
  end

end

tree = OrangeTree.new
tree.status
tree.one_year_passes
tree.status
tree.one_year_passes
tree.status
tree.one_year_passes
tree.status
tree.one_year_passes
tree.status
tree.one_year_passes
tree.pick_an_orange
tree.pick_an_orange
tree.status
tree.one_year_passes
tree.status
tree.one_year_passes
tree.pick_an_orange
tree.pick_an_orange
tree.status
tree.one_year_passes
tree.status
tree.one_year_passes
tree.pick_an_orange
tree.pick_an_orange
tree.status
tree.one_year_passes
tree.status
tree.one_year_passes
tree.pick_an_orange
tree.pick_an_orange
tree.status
tree.one_year_passes
tree.status
tree.one_year_passes
tree.status



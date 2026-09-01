class Dessert
  attr_accessor :calories, :name

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    @calories < 200
  end

  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor

  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end

  def delicious?
    return false if @flavor == "black licorice"

    super
  end
end

jb = JellyBean.new("Jelly Bean", 150, "black licorice")
puts jb.delicious?
puts jb.healthy?

jb2 = JellyBean.new("Jelly Bean", 250, "cherry")
puts jb2.delicious?
puts jb2.healthy?

pie = Dessert.new("pie", 100)
puts pie.delicious?
puts pie.healthy?
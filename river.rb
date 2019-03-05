class River
  attr_reader :name, :fish
  def initialize(name)
    @name = name
    @fish = ["Fun", "Pea", "Lea"]
    end

   def fish_count()
     return @fish.length
   end
 
  end

class Bear
  attr_reader :call, :type, :stomach
  def initialize(call, type)
    @call = call
    @type = type
    @stomach = []
  end

    def fish_count()
      return @stomach.length()
    end

    def take_fish(river)
      @stomach << river.fish[0]
      river.fish.delete(river.fish[0])
    end

    def bear_roar(string)
      return "Bear #{string}"
    end
    #
    def full_belly()
      if @stomach.length + river.fish[] == true
      return @stomach.length
      end
    end



end

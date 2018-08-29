class House

  	attr_reader :price,
  							:address,
                :depth,
                :rooms

  	def initialize(price, address, rooms = [])
  		@price = price
      @address = address
      @rooms = rooms
  	end

    def add_room(room)
      @rooms << room
    end

end

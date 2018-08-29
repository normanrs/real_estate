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

    def rooms_from_category(type)
      rooms_of_type = []
      @rooms.each do |room|
        rooms_of_type << room if room.category == type
        end
      rooms_of_type
    end

    def area
      total_area = 0
      @rooms.each do |room|
        total_area += room.area
      end
      total_area
    end

end

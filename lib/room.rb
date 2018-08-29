class Room

  	attr_reader :category,
  							:width,
                :depth

  	def initialize(category, length, width)
  		@category = category
      @length = length
      @width = width
  	end

end

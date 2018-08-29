class House

  	attr_reader :value,
  							:street_address,
                :depth

  	def initialize(value, street_address)
  		@value = value
      @street_address = street_address
  	end


end

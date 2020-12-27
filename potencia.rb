class Potencia
	attr_accessor :base, :expoente, :resultado
	def initialize(base=nil,expoente=nil,resultado=nil)
		@base=base
		@expoente=expoente
		@resultado=resultado
	end
	def pot()
		@resultado=@base**@expoente
		return @resultado
	end
end
puts "Digite o valor da base e exponte: \n" 
base,expoente=gets.split.map(&:to_f)
pow=Potencia.new(base,expoente)
puts "Resultado= #{pow.pot().round(2)} \n"
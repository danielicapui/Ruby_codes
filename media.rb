
class Media
	attr_accessor :nota1, :nota2, :nota3 , :paralela
	def initialize(nota1 =nil,nota2=nil, nota3=nil,paralela=nil)
		@nota1=nota1
		@nota2=nota2
		@nota3=nota3
		@media=((@nota1*4+@nota2*5+@nota3*6)/15.0)
		@paralela=paralela
	end
	
	def passou
		puts "Sua media é: #{@media.round(2)} "
	end
	
	def recuperacao
		if (@media <=4.00)
			puts "Reprovado"
		elsif (@media>4.00 && @media<7.00)
			@paralela=gets.chomp.to_f
			s=(@media+@paralela)/2
			if (s>=7.00)
				puts "Passou na recuperação com: #{s.round(2)}"
			end
		end
	end
end
puts "Digite as notas 1,2,3 na mesma linha"
nota1,nota2,nota3 = gets.split.map(&:to_f)

usagi=Media.new(nota1,nota2,nota3)
usagi.passou()
usagi.recuperacao()
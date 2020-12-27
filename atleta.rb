class Atleta
    attr_accessor :nome
    def initialize(nome=nil)
    @nome=nome
    end
	def mostrar_nome()
	puts "Nome do atleta: é #{@nome}"
	end
end

class Esportista < Atleta
	def competir
		puts "Participando de uma competição! \n"
	end
end

class Jogador_futebol < Esportista
	def correr
		puts "Correndo atrás da bola!\n"
	end
end
class Maratonista < Esportista
	def correr
		puts "Percorrendo o percurso!\n"
	end
end

nome=gets.chomp.to_s
daniel=Esportista.new(nome)
daniel.competir()
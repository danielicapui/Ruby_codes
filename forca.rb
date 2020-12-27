class Forca
	attr_accessor :letra, :palavra, :chance, :resposta
	def initialize(palavra=["urso","peixe","casa","amor","yuri","escola","programacao","queijo"],chance=5,letra=nil,resposta=nil)
		@letra =letra
		@palavra =palavra
		@chance =chance
		@resposta=resposta
	end
	def escolhe_letra(letra,palavra)
		contagem = palavra.scan(/(?=#{letra})/).count
		if contagem>0
			puts "A palavra tem #{contagem} letras 'a' na palavra"
			puts "Letra: #{letra} tem na palavra"
			return letra
			
		else
			puts "Não tem a Letra: #{letra} na palavra!"
			@chance=(@chance)-1
			return letra
		end
	end
	def falar_resposta(resposta)
		if @palavra==resposta
			puts" Parabéns você ganhou!"
		else 
			puts"Resposta errada"
			@chance=(@chance)-1
		end
	end 
end		

def game()
	is_game_over=false
	while (is_game_over==false)
		f=Forca.new()
		##caso queira escolher uma palavra
		#puts"Digite qual palavra?"
		#f.palavra=gets.chomp.to_s
		puts"Digite número de chance?"
		f.chance=gets.chomp.to_i
		letras=[]
		while(f.chance>0)
			puts "Digite 1 para escolher letra!"
			puts "Digite 2 para dizer a palavra!"
			puts "Digite 3 para ver as letras já faladas!"
			puts "Digite 4 para sair!"
			escolha=gets.chomp.to_i
			if escolha==1
				puts "Digite a letra:"
				f.letra=gets.chomp.to_s
				f.escolhe_letra(f.letra,f.palavra)
				letras.push(f.letra)
			elsif (escolha==2)
				puts "Digite a resposta!"
				resposta=gets.chomp.to_s
				f.falar_resposta(resposta)
			elsif (escolha==3)
				p=0
				for letra in 0..(letras.length()-1)
					puts "Letra:#{p} = #{letras[p]}"
					p=p+1
				end
			elsif escolha==4
				is_game_over=true
				break
			else 
				puts" opcao invalida"
			end
			if f.chance<=0
				puts"Perdeu!"
		end
	end
end
game()
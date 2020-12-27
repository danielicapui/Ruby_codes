class Forca
	attr_accessor :letra, :palavra, :chance, :resposta
	def initialize(palavra=["urso","peixe","casa","amor","yuri","escola","programacao","queijo"],chance=5,letra=nil,resposta=nil)
		@letra =letra
		@palavra =palavra
		@chance =chance
		@resposta=resposta
	end
	def escolhe_letra(lista,letra,palavra)
		r=verifica_palavra(letra,palavra)
		if r==true
			lista=encher_palavra(lista,palavra,letra)
			puts "Letra: #{letra} tem na palavra"
			return lista
		else
			puts "Não tem a Letra: #{letra} na palavra!"
			@chance=(@chance)-1
			return lista
		end
	end
	def falar_resposta(rabbit,resposta)
		if rabbit==resposta
			puts" Parabéns você ganhou!"
			return true
		else 
			puts"Resposta errada"
			@chance=(@chance)-1
			return false
		end
	end 
end	

#Aqui é o procesamento do game, pode fazer uma classe e adicionar os metodos mas melhor deixar separado
#pega uma palavra da lista_predefinida
def pega_palavra(palavras)
	palavra=palavras.sample()
	return palavra
end
##define a palavra para ser usada no jogo
def prepara_palavra(palavra)
	usagi=[]
	for t in 0..(palavra.length()-1)
		usagi.push(palavra[t])
	end
	#puts usagi
	return usagi
end
#bool só para testar
def verifica_palavra(letra,usagi)
	for shika in 0.. (usagi.length()-1)
		if usagi[shika]==letra
			return true
		end
	end
	return false
end
def tamanho_palavra(usagi)
	lista=[]
	for shika in 0.. (usagi.length()-1)
		lista.push("_")
	end
	return lista
end
def encher_palavra(lista,usagi,letra)
	for i in 0.. (usagi.length()-1)
		if usagi[i]==letra
			lista[i]=usagi[i]
		end
	end
	return lista
end
def mostrar_letras(letras)
	p=0
	for letra in 0..(letras.length()-1)
		puts "Letra:#{p} = #{letras[p]}"
		p=p+1
	end
end

def game()
	is_game_over=false
	while (is_game_over==false)
		f=Forca.new()
		
		##caso queira escolher uma palavra
		#puts"Digite qual palavra?"
		#f.palavra=gets.chomp.to_s
		#processamento
		#esolhe uma palavra da lista
		palavra=pega_palavra(f.palavra)
		#puts palavra
		#arruma a palavra para ser usada em outras funções
		usagi=prepara_palavra(palavra)
		#define o tamanho da palavra que iremos mostrar
		ino=tamanho_palavra(usagi)
		
		puts"Digite número de chance?"
		f.chance=gets.chomp.to_i
		letras=[]
		#loop
		while(f.chance>0)
			puts "Digite 1 para escolher letra!"
			puts "Digite 2 para dizer a palavra!"
			puts "Digite 3 para ver as letras já faladas!"
			#puts "Digite 5 para mostrar a palavra!"
			puts "Digite 4 para sair!"
			escolha=gets.chomp.to_i
			if escolha==1
				puts "Digite a letra:"
				f.letra=gets.chomp.to_s
				ino=f.escolhe_letra(ino,f.letra,palavra)
				letras.push(f.letra)
			elsif (escolha==2)
				puts "Digite a resposta!"
				f.resposta=gets.chomp.to_s
				if f.falar_resposta(palavra,f.resposta)==true
					f.palavra.delete(palavra)
				end
			elsif (escolha==3)
				mostrar_letras(letras)
			elsif (escolha==4)
				is_game_over=true
				break
			#elsif (escolha==5)
				#mostrar_letras(ino)
			else 
				puts" opcao invalida"
			end
			if f.chance<=0
				puts"Perdeu!"
			end
			mostrar_letras(ino)
		end
	end
end
game()
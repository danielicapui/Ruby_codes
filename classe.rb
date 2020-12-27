class Livro
	attr_accessor :nome, :valor, :tipo, :quantidade, :total
	def initialize(nome =nil,valor=nil,tipo=nil,quantidade=nil,total=nil)
		@nome = nome
		@valor = valor
		@tipo = tipo
		@quantidade=quantidade
		@total=@valor*@quantidade
	end
	def mostrar_infor()
		puts "Livro nome: #{@nome}\nValor:R$ #{@valor}\nGênero: #{@tipo} \n"
	end
end

def t_carrinho(lista)
	lista<<livro
	

end
def add_carinho(lista)
	puts "Digite o nome do livro:"
	nome=gets.chomp.to_s
	puts "Digite o preço:"
	valor=gets.chomp.to_f
	puts "Digite o tipo:"
	tipo=gets.chomp.to_s
	puts "Digite a quantidade:"
	quantidade=gets.chomp.to_i
	livro=Livro.new(nome,valor,tipo,quantidade)
	lista<<livro
	return lista
end

lista=[]
lista=add_carinho(lista)
lista=add_carinho(lista)
puts lista.select { |livro| livro.total>20 }

# rua7=Livro.new("Rua 7",100,"terror",2)
# reileao=Livro.new("Rei Leão",50,"animação",3)

##lista.mostrar_infor()


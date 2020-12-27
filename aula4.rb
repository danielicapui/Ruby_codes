##Array
# estados=[]
# estados.push('Ceará')
# estados.push('Bahia')
# estados.push('Acre')
# estados.push('Amapa')

##puts estados.first
##puts estados.last
##puts estados.delete_at(2)
##puts estados.pop
##puts estados.include?('Ceará')


##Hash
#capitais= Hash.new
#capitais = { acre: 'Rio Branco', sao_paulo: 'São Paulo'}

#hash = {1 => 'Chave do tipo inteiro', true => 'Chave do tipo booleano, [1,2,3] => 'Chave do tipo array'}

##Adicionando itens

#1- Adicione um novo item ao hash estados

#capitais[:minas_gerais] = "Belo Horizonte"

#puts capitais

#2- Acesse a capital que acabamos de inserir utilizando sua chave

#puts capitais[:minas_gerais]

#De forma sucinta, a chave é o index de nossos itens

 

#3- Para retornar todas as chaves de um hash
#puts capitais.keys

 

##4- Agora, todos os valores de um hash  


#puts capitais.values

 

#Exclusão

#1- Remova um elemento chave-valor


#puts capitais.delete(:acre)
#puts capitais
#capitais.delete(:acre)
 

 

#3Obtendo informações

#1- Descubra o tamanho do hash

#capitais.size

#capitais.size
 

#2- Verifique se o Hash está vazio

#capitais.empty?
#capitais.empty?
 



#Each
#Percorre uma coleção de forma parecida ao for, porém, não sobrescrevendo o valor de variáveis fora da estrutura de repetição.
#Array
#1- Adicione o seguinte código a um programa chamado each_array.rb

# names = ['Joãozinho', 'Manoel', 'Juca']

# name = 'Leonardo Scorza'

# names.each do |name|
 # puts name 
# end

# puts name

# names = ['Joãozinho', 'Manoel', 'Juca']
 
# name = 'Leonardo Scorza'
 
# names.each do |name|
 # puts name 
# end
 
# puts name
#Ao executar o programa perceba que não foi alterado o valor da  variável name, definida antes da estrutura de repetição.

 

 

##Hash
##1- Crie um arquivo chamado  each_hash.rb com o seguinte código

# aulas = {'Aula 1 ' => 'liberada', 'Aula 2 ' => 'liberada', 'Aula 3 ' => 'liberada', 'Aula 4 ' => 'liberada', 'Aula 5 ' => 'em breve'}

# aulas.each do |key, value|
 # puts "#{key} #{value}"
# end

# aulas = {'Aula 1 ' => 'liberada', 'Aula 2 ' => 'liberada', 'Aula 3 ' => 'liberada', 'Aula 4 ' => 'liberada', 'Aula 5 ' => 'em breve'}
 
# aulas.each do |key, value|
 # puts "#{key} #{value}"
# end
#Em cada vez que a estrutura percorre o hash, o elemento atual é representado por key e value.



##Hash
#1- Crie um arquivo chamado  each_hash.rb com o seguinte código

# aulas = {'Aula 1 ' => 'liberada', 'Aula 2 ' => 'liberada', 'Aula 3 ' => 'liberada', 'Aula 4 ' => 'liberada', 'Aula 5 ' => 'em breve'}

# aulas.each do |key, value|
 # puts "#{key} #{value}"
# end

# aulas = {'Aula 1 ' => 'liberada', 'Aula 2 ' => 'liberada', 'Aula 3 ' => 'liberada', 'Aula 4 ' => 'liberada', 'Aula 5 ' => 'em breve'}
 
# aulas.each do |key, value|
 # puts "#{key} #{value}"
# end
#Em cada vez que a estrutura percorre o hash, o elemento atual é representado por key e value.

##Map

#Cria um array baseando-se em valores de outro array existente.
#1- Crie um arquivo chamado map.rb

array = [1, 2, 3, 4]

# \n é uma quebra de linha 
# puts "\n Executando .map multiplicando cada item por 2"
# .map não altera o conteúdo do array original
# new_array = array.map do |a| 
             # a * 2
           # end

# puts "\n Array Original"
# puts " #{array}"

# puts "\n Novo Array"
# puts " #{new_array}"

# puts "\n Executando .map! multiplicando cada item por 2"


# .map! força que o conteúdo do array original seja alterado
# array.map! do |a| 
 # a * 2
# end

# puts "\n Array Original"
# puts " #{array}"
# puts ''

# array = [1, 2, 3, 4]
 
# \n é uma quebra de linha 
# puts "\n Executando .map multiplicando cada item por 2"
# .map não altera o conteúdo do array original
# new_array = array.map do |a| 
             # a * 2
           # end
 
# puts "\n Array Original"
# puts " #{array}"
 
# puts "\n Novo Array"
# puts " #{new_array}"
 
# puts "\n Executando .map! multiplicando cada item por 2"
# .map! força que o conteúdo do array original seja alterado
# array.map! do |a| 
 # a * 2
# end
 
# puts "\n Array Original"
# puts " #{array}"
# puts ''

#Como vimos neste exemplo, podemos forçar que o array original seja alterado utilizando map!



##Select

#Realiza uma seleção de elementos presentes em uma collection através de uma condição pré definida. Traz como resultado somente os valores que passam nesta condição.


#Array
#1- Crie um arquivo chamado select_array.rb

# array = [1, 2, 3, 4, 5, 6]

# selection = array.select do |a|
             # a >= 4
           # end

# puts selection
# array = [1, 2, 3, 4, 5, 6]
 
# selection = array.select do |a|
             # a >= 4
           # end
 
# puts selection
#A condição para que um item do array seja selecionado é que seu valor seja maior ou igual a 4.

 

#Hash
#1- Crie um arquivo chamado select_hash.rb
# hash = {0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'tres'}

# puts 'Selecionando keys com valor maior que 0'
# selection_key = hash.select do |key, value|
                 # key > 0
               # end

# puts selection_key
# hash = {0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'tres'}
 
# puts 'Selecionando keys com valor maior que 0'
# selection_key = hash.select do |key, value|
                 # key > 0
               # end
 
# puts selection_key
#Veja que dentro de um Hash podemos fazer uma seleção por chave ou valor.


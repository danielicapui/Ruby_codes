# a=[0,1,2]
# puts a
# puts a[1]
# puts a[2]
# puts a[0]
# puts a.class
# tank='tank'
# aviao='aviao'
# b={tank:2000,aviao:3000}
# puts b.class
# puts {:tank}
# puts b

##Questão 1001 uri
# a=gets.chomp.to_i
# b=gets.chomp.to_i
# resultado=a+b
# puts "X = #{resultado}"

##Questão 1002 uri
# raio=gets.chomp.to_f
# n=3.14159
# area=n*raio*raio
# puts "A=#{:area}"

# nome=gets.chomp
# idade=gets.chomp.to_i
# puts "nome e sua idade #{idade}"

#Else  e elsif e if
# a=gets.chomp.to_i
# b=gets.chomp.to_i
# if a >b
    # puts "A #{a} é maior que b #{b}"

# elsif a==b
    # puts "A #{a} é igual que b #{b}"
# else 
    # puts "A #{a} é menor que b #{b}"
# end
#unless
# product_status = 'close'
 
# unless product_status == 'open'
  # check_change = 'can'
# else
  # check_change = 'can not'
# end
 
# puts "You #{check_change} change the product"

#Case
# puts 'Digite o número do mês em que você nasceu?'
 
# month = gets.chomp.to_i
 
# case month 
# when 1..3
  # puts 'Você nasceu no começo do ano'
# when 9..12
  # puts 'Você nasceu no final do ano'
# when 4..6
  # puts 'Você nasceu na primeira metade do ano'
# when 7..9
  # puts 'Você nasceu na segunda metade do ano!'
# else 
  # puts 'Não foi possível identificar'
# end


#Interação for
# fruits = ['Maçã', 'Uva', 'Morango']
 
# for fruit in fruits 
  # puts fruit
# end

#interação while
# x = 1  
# while x < 10
  # puts x
  ##Adiciona + 1 ao valor de x
  # x += 1
# end

#Times interação
# 100.times do
  # puts 'Estou aprendendo times!'
# end
 
# names = ['João', 'Alfredo', 'Juca']
# Igual ao array, o times começa com índice 0 
# 3.times do |index|
  # puts names[index]
# end

##Calculadora Ruby
# t=false
# while t==false
    # a=gets.chomp.to_f
    # b=gets.chomp.to_f
    # op=gets.chomp.to_i
    # case op
    # when 1
        # puts "soma = #{a+b}"
    # when 2
        # puts "sub = #{a-b}"
    # when 3
        # puts "mult = #{a*b}"
    # when 4   
        # if b!=0
            # puts "div = #{a/b}" 
        # else
            # puts "Erro"
        # end
    # end
    # when 5 
        #t=true
# end








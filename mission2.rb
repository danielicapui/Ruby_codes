rabbit=Hash.new
a=gets.chomp
av=gets.chomp.to_f
b=gets.chomp
bv=gets.chomp.to_f
c=gets.chomp
cv=gets.chomp.to_f
rabbit= {a => av, b => bv, c => cv}
rabbit.each do |key,value|
    puts "A chave #{key} e o valor #{value}"
end

#Usando for e each
rabbit = {a: 10, b: 30 , c: 20, d: 25, e: 15}
#Usando for e each
t=[]
rabbit.each do |key,value|
    t.push(value)
end
max=0
for s in t
    if s>max
        max=s
    end
end
rabbit.each do |key,value|
    if max==value
        puts "A chave #{key} e o valor #{value}"
    end
end
#Usando select
max=0
chave=0
selecao=rabbit.select do |key,value|
    if value>max
        max=value  
        chave=key
    end
end
puts "A chave #{chave} e o valor #{max}"
        
        
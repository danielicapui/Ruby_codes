
def interpolar(valorx,inicio,fim=3.6)
	usagi=[]
	t=0
	while(inicio<fim+0.1)
	
		deno=valorx*inicio
		puts "f#{t}= 1/#{valorx.round(4)} *1/#{inicio.round(4)}"
		puts "f#{t}= 1/#{deno.round(4)}"
		f=1/deno
		puts "Valor de f#{t} = #{f.round(4)}"
		puts " "
		usagi.push(f)
		inicio=inicio+0.1
		t=t+1
	end
	return usagi
end
def inter_soma(usagi,inicio,fim,n)
	h=(fim-inicio)/n
	rabbit=(usagi[0]+usagi[n])/2.0
	soma=0
	for t in 1..(usagi.length()-2)
		soma=soma+usagi[t]
	end 
	puts "i= #{h.round(4)}(#{rabbit.round(4)}+#{soma.round(4)})"
	i=h*(rabbit+soma)
	s=rabbit+soma
	puts "i= #{h.round(4)}*#{s.round(4)}"
	puts "Resposta: i= #{i.round(4)}"
	return i
end

puts "Digite o valor de x:"
x=gets.chomp.to_f
puts "Digite o valor inicial:"
inicio=gets.chomp.to_f
puts "Digite o valor final do intervalo:"
fim=gets.chomp.to_f
usagi=interpolar(x,inicio,fim)
puts "Digite o valor de n:"
n=gets.chomp.to_f
inter_soma(usagi,inicio,fim,n)
def entrada()
    r=gets.chomp.to_f
    return r
end

def processamento(r)
    n=3.14159
    area=n*r*r
    return area
end

def saida(area)
    # puts "A=#{area.ceil(4)}"
    puts 'A=%.4f' % area
end

n=entrada()
rabbit=processamento(n)
saida(rabbit)

def entrada()
    r=gets.chomp.to_f
    return r
end
def processamento(a)
    if (a>=0.0 && a<=2000.00)
        return true
    elsif (a>=2000.01 && a<=3000.00)
        v=(a-2000.00)*0.08
        
        return v

    elsif(a>=3000.01 && a<=4500.00)
        v=(a-3000.0)*0.18+(1000*0.08)
        return v  

    else 
        v=(a-4500.00)*0.28 + (1500*0.18) + (1000*0.08)
        return v
    end
end

def saida(rabbit)
    if (rabbit==true)
        puts("Isento")

    else
        puts "R$ %0.02f\n" % rabbit.round(2)
    end
        
end

a=entrada()

rabbit=processamento(a)
saida(rabbit)


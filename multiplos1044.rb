def entrada()
    t=[]
    a,b = gets.split.map(&:to_i)
    t.push(a)
    t.push(b)
    return t
end
def processamento(a,b)

    if (a%b==0 ||b%a==0 )
        v=1
        saida(1)
    else
        v=0
        saida(v)
    end
end

def saida(v)
        if v==1
            puts("Sao Multiplos")
        end
        if v==0
            puts("Nao sao Multiplos")
        end
        
end

a=entrada()

rabbit=processamento(a[0],a[1])


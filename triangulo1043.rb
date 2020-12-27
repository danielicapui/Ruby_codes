def entrada()
    t=[]
    a,b,c = gets.split.map(&:to_f)
    t.push(a)
    t.push(b)
    t.push(c)
    return t
end
def processamento(a,b,c)
    if (b - c < a && b - c < b + c && a - c < b && a - c < a + c && a - b < c && a - b < a + b)
        area=a+b+c
        v=1
        return saida(area,v)
    end
    v=0
    area=((a+b)/2)*c 
    return saida(area,v)
end

def saida(area,v)
        if v==1
            puts("Perimetro = #{area.round(1)}")
        end
        if v==0
            puts("Area = #{area.round(1)}")
        end
        
end

a=entrada()

rabbit=processamento(a[0],a[1],a[2])


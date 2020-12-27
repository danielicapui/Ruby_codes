
class Instrumento
  def escrever()
    puts 'Escrevendo'
  end
end
 
class Lapis < Instrumento
  def escrever()
    puts 'Escrevendo à Lápis'
  end
end
 
class Caneta < Instrumento
  def escrever()
    puts 'Escrevendo à Caneta'
  end
end
 a=Instrumento.new
instrumento= [Lapis.new, Caneta.new]
# Chamamos o método escrever pra qualquer instrumento
instrumento.each do |instrumento|
	instrumento.escrever
end
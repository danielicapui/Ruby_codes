require "cpf_cnpj"
class Cadastro
	attr_accessor :cpf
	def initialize(cpf=nil)
	@cpf=cpf
	end
	def valid_cpf(cpf)
		if CPF.valid?(cpf)
			puts "cpf valido"
		else
			puts "Cpf inválido"
		end
	end
end
puts "Digite o cpf/cnpj: \n"
cpf=gets.chomp.to_s
daniel=Cadastro.new(cpf)
daniel.valid_cpf(daniel.cpf)
class IMCCalculadora

	def calculaIMC(peso,altura)
		if altura == 0
			raise ArgumentError,'altura nao pode ser zero'
		elsif altura == nil
			raise ArgumentError, 'altura nao pode ser nulo'
		end

		if peso == 0
			raise ArgumentError, 'peso nao pode ser zero'
		elsif peso == nil
			raise ArgumentError, 'peso nao pode ser nulo'
		end

		unless peso.instance_of?(Fixnum)
			raise ArgumentError, 'digitado caracter invalido'
		end

		imc = peso/(altura*altura)

		if  imc < 18.5
			return "abaixo do peso"
		elsif imc >= 18.5 && imc <= 24.9
			return "saudavel"
		elsif imc >=25 && imc <= 29.9
			return "sobrepeso"
		elsif imc >= 30 && imc <= 34.9
			return "obesidade I"
		elsif imc >= 35 && imc <= 39.9
			return "obesidade II"
		else
			return "obesidade morbida"
		end
	end

end

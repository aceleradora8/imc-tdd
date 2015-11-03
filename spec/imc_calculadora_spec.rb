require_relative '../imc_calculadora'

describe IMCCalculadora do 
	before :each do
		@calculadora = IMCCalculadora.new
	end

	it "is a IMCCalculadora" do
		expect(@calculadora).to be_an_instance_of IMCCalculadora
	end

	it "lancar excecao quando altura igual a zero" do
		expect{@calculadora.calculaIMC(10,0)}.to raise_error("altura nao pode ser zero")
	end

	it "lancar excecao quando altura igual a nulo" do
		expect{@calculadora.calculaIMC(10,nil)}.to raise_error("altura nao pode ser nulo")
	end
	
	it "lancar excecao quando peso igual a nulo" do
		expect{@calculadora.calculaIMC(nil,10)}.to raise_error("peso nao pode ser nulo")
	end

	it "retornar abaixo do peso quando o valor for menor que 18,5" do
		expect(@calculadora.calculaIMC(45,1.60)).to be == "abaixo do peso"
	end

	it "retornar saudavel quando o valor for entre 18,5 e 24,9" do
		expect(@calculadora.calculaIMC(50,1.60)).to be == "saudavel"
	end

	it "retornar sobrepeso quando o valor for entre 25 e 29,9" do
		expect(@calculadora.calculaIMC(70,1.60)).to be == "sobrepeso"
	end

	it "retornar obesidade I quando o valor for entre 30 e 34,9" do
		expect(@calculadora.calculaIMC(85,1.60)).to be == "obesidade I"
	end

	it "retornar obesidade II quando o valor for entre 35 e 39,9" do
		expect(@calculadora.calculaIMC(90,1.60)).to be == "obesidade II"
	end

	it "retornar obesidade morbida quando o valor for maior ou igual a 40" do
		expect(@calculadora.calculaIMC(110,1.60)).to be == "obesidade morbida"
	end

end
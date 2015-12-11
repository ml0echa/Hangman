require './lib/Ahorcado'

describe "Ahorcado" do
	it "should be Ahorcado" do
		ahorcado = Ahorcado.new
		inicio = ahorcado.init()		
		expect(inicio).to eq("Ahorcado")	
	end
	it "should be Palabra" do
		ahorcado = Ahorcado.new
		p = ahorcado.palabra()
		expect(p).to eq("palabras")
	end

	it "should be cantidad" do
        @@palabra= "aaa"
        @@letra = "a"
		@@letrasUsadas = ""
		@@arregloLetras = @@palabra.split("")
  @@arregloBool = []
  @@arregloLetras.each{@@arregloBool.push false}
		ahorcado = Ahorcado.new
		p = ahorcado.validar()
		expect(p).to eq(3)
	end

end

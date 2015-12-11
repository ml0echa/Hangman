require './lib/Ahorcado'

describe "Ahorcado" do
	it "should be Ahorcado" do
		ahorcado = Ahorcado.new
		inicio = ahorcado.init()		
		expect(inicio).to eq("Ahorcado")	
	end
end

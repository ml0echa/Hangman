class Ahorcado

	def init
        resultado="Ahorcado"
	end

	def palabra
		p = "palabras"
	end

	def validar

		conteo = @@palabra.upcase.count(@@letra.upcase)
		
		if not @@letrasUsadas.include?@@letra.upcase then
			@@letrasUsadas += @@letra.upcase
		end
		if conteo == 0 then
			@@Intentos -= 1
		else
			(0..@@arregloLetras.length).each do |e|
				if @@arregloLetras[e] == @@letra.upcase then
					@@arregloBool[e] = true
				end 
			end 
		end
		
		conteo
	end
end

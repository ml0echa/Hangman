require 'sinatra'
require './lib/Ahorcado'

get '/' do
@@encontrado=0
@@letra=""
@@palabra = "prueba"
@@letrasUsadas = ""
@@Intentos = 6
@@ahorcado = Ahorcado.new
  	erb :index
end

post '/juego' do
  @@palabra = @@ahorcado.palabra().upcase
  @@arregloLetras = @@palabra.split("")
  @@arregloBool = []
  @@arregloLetras.each{@@arregloBool.push false}
  erb :juego
end

post '/validar' do
  @@letra = params["txtInt"]
  ahorcado = Ahorcado.new
  @@encontrado = ahorcado.validar
  erb :juego
end


require 'csv'

usuarios = CSV.read('usuarios.csv', headers:true)

def exibe_usuarios usuarios
	usuarios.each do |usuario|
		p "Ola #{usuario['Nome']},"
		p "Acabamos de enviar um email para #{usuario['Email']} informando as datas dos cursos que foram recentemente abertos."
	end
end

exibe_usuarios(usuarios)
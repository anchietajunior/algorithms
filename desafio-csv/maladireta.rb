require 'csv'

usuarios = CSV.read('usuarios.csv', headers:true)

def exibe_usuarios usuarios, filename

	usuarios.each do |usuario|
		data = ''
		f = File.open(filename, "r")
		
		f.each_line do |line|
			line.gsub!("{{nome}}", usuario['Nome'])
			line.gsub!("{{email}}", usuario['Email'])
			data += line
		end
		p data
	end
	
end

exibe_usuarios(usuarios, 'carta.tpl')
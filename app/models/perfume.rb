class Perfume < ActiveRecord::Base
	# attr_accessible :subir_imagen
	belongs_to :marca
	belongs_to :sexo
	belongs_to :tipo
	belongs_to :mililitro
	# Para dar acceso al directorio donde este nuestro rails
	# /proyecto_rails/public/perfumes
	FOTOS = File.join Rails.root, 'public','perfumes'
	# Metodo para ejecutar acciones despues de haber
	# guardado la información en la bd

	after_save :guardar_imagen

	# El nombre de este metodo debe coincidir con del metodo del formulario
	def subir_imagen=(file_data)
		#Se ejecuta solo si no esta vacio
		unless file_data.blank?
			puts "FILEDATA: #{file_data}"
			@file_data = file_data
			#Parte el archivo en 2 por el caracter '.' y coge la ultima parte
			# para luego convertirlo a minuscula
			self.imagen = file_data.original_filename.split('.').last.downcase
			puts "IMAGEN: #{self.imagen}"
			# self.imagen = "#{id}.#{imagen}"
		end
	end

	# Ej. /rails_project/public/perfumes/23.png
	def imagen_filename
		File.join FOTOS, "#{id}.#{imagen}"
		# File.join FOTOS, "#{imagen}"
	end

	# Ruta base, para poder acceder a las imagenes
	def imagen_path
		"../perfumes/#{id}.#{imagen}"
		# "../perfumes/#{imagen}"
	end

	#Verifica si el archivo existe
	def has_imagen?
		File.exists?
	end

	private

	def guardar_imagen
		# Corroboramos que exista este objeto
		if @file_data
			#FileUtils, clase encarga de crear y manipular archivos en rails
			#Accedemos al directorio Fotos o en caso no existiera
			# se creara y accedera
			FileUtils.mkdir_p FOTOS
			File.open(imagen_filename, 'wb') do |f|
				f.write(@file_data.read)
			end
			#Liberamos esta variable
			@file_data = nil
		end
	end
end

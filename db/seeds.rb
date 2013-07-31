# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Sexo.create(:descripcion => 'Masculino')
Sexo.create(:descripcion => 'Femenino')


Mililitro.create(:descripcion => '30')
Mililitro.create(:descripcion => '90')
Mililitro.create(:descripcion => '100')
Mililitro.create(:descripcion => '110')
Mililitro.create(:descripcion => '125')
Mililitro.create(:descripcion => '150')


Tipo.create(:descripcion => 'EDT')
Tipo.create(:descripcion => 'EDP')

Marca.create(:descripcion => 'Hugo Boss')
Marca.create(:descripcion => 'Carolina Herrera')
Marca.create(:descripcion => 'Givenchy')
Marca.create(descripcion: 'Channel')

Perfume.create(nombre: 'Bottled Night',
	    marca_id: 1,
	    sexo_id: 1,
	    tipo_id: 1,
	    mililitro_id: 3,
	    imagen: 'jpg',
	    precio: 120.0
	)

Perfume.create(nombre: 'Bottled',
	    marca_id: 1,
	    sexo_id: 1,
	    tipo_id: 1,
	    mililitro_id: 3,
	    imagen: 'jpg',
	    precio: 110.0
	)
Perfume.create(nombre: 'Boss Selection',
	    marca_id: 1,
	    sexo_id: 1,
	    tipo_id: 1,
	    mililitro_id: 3,
	    imagen: 'jpg',
	    precio: 130.0
	)
Perfume.create(nombre: 'Gentleman',
	    marca_id: 1,
	    sexo_id: 1,
	    tipo_id: 1,
	    mililitro_id: 3,
	    imagen: 'jpg',
	    precio: 150.0
	)

Perfume.create(nombre: 'Play Intense',
	    marca_id: 1,
	    sexo_id: 1,
	    tipo_id: 1,
	    mililitro_id: 3,
	    imagen: 'jpg',
	    precio: 150.0
	)

Perfume.create(nombre: 'Boos Orange',
	    marca_id: 1,
	    sexo_id: 2,
	    tipo_id: 1,
	    mililitro_id: 3,
	    imagen: 'jpg',
	    precio: 170.0
	)

Perfume.create(nombre: 'Boos Femme',
	    marca_id: 1,
	    sexo_id: 2,
	    tipo_id: 1,
	    mililitro_id: 3,
	    imagen: 'jpg',
	    precio: 160.0
	)
Perfume.create(nombre: 'Amarige',
	    marca_id: 3,
	    sexo_id: 2,
	    tipo_id: 1,
	    mililitro_id: 3,
	    imagen: 'jpg',
	    precio: 170.0
	)
Perfume.create(nombre: 'Organza',
	    marca_id: 3,
	    sexo_id: 2,
	    tipo_id: 2,
	    mililitro_id: 3,
	    imagen: 'jpg',
	    precio: 190.0
	)
Perfume.create(nombre: 'Ange ou Demon',
	    marca_id: 3,
	    sexo_id: 2,
	    tipo_id: 2,
	    mililitro_id: 3,
	    imagen: 'jpg',
	    precio: 210.0
	)




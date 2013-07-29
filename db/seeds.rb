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
Marca.create(:descripcion => 'Channel')



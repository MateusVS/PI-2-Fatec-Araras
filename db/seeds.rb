# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create({ name: 'admin', email: 'admin@admin.com', password: '123456' })

Specialist.create({ name: 'João', description: 'Personal', phone: '(19) 99999-9999' })
Specialist.create({ name: 'Pedro', description: 'Nutricionista', phone: '(19) 99999-9999' })
Specialist.create({ name: 'Luiza', description: 'Personal', phone: '(19) 99999-9999' })
Specialist.create({ name: 'Fernanda', description: 'Fisioterapeuta', phone: '(19) 99999-9999' })
Specialist.create({ name: 'Alex', description: 'Nutricionista', phone: '(19) 99999-9999' })
Specialist.create({ name: 'José', description: 'Personal', phone: '(19) 99999-9999' })

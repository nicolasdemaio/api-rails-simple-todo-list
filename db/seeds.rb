# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Task.create([
              {title: 'Ir al cine', priority: 'LOW'},
              {title: 'Limpiar el coche', description: 'Tiene que estar limpio antes de las 7pm', priority: 'LOW'},
              {title: 'Comprar almuerzo', description: 'Milanesas, papas fritas y una gaseosa', priority: 'LOW'},
              {title: 'Ordenar habitacion', description: '', priority: 'MEDIUM'},
              {title: 'Atender llamados', description: 'Durante la tarde, recibiré llamadas de clientes', priority: 'HIGH'},
              {title: 'Ir a retirar un pedido', description: 'Correo estará esperando, llevar documentación', priority: 'HIGH'}
            ]
)
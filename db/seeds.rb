# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  { name: 'Fred Flintstone' },
  { name: 'Mickey Mouse' },
  { name: 'Alice' },
  { name: 'Homer Simpson' },
  { name: 'SpongeBob' }
])

users.first.events.create([
  { name: 'Yabba Dabba Doo Party', location: 'Flintstone Cave', date: '2020-05-01', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mattis mi vitae ex pharetra lacinia. In feugiat ante sit amet nisl consequat lobortis. Praesent sit amet enim sit amet felis malesuada mattis. Pellentesque fringilla placerat odio sit amet convallis. Proin molestie sem eu magna elementum, quis laoreet est tempus. Integer in tempor nulla, at mattis erat. Etiam consequat dui ut nibh dapibus tempus. Curabitur semper luctus massa, vel scelerisque turpis accumsan ultricies.' },
  { name: 'Brontosaurus BBQ Evening', location: 'Jurassic Park', date: '2020-08-23', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mattis mi vitae ex pharetra lacinia. In feugiat ante sit amet nisl consequat lobortis. Praesent sit amet enim sit amet felis malesuada mattis. Pellentesque fringilla placerat odio sit amet convallis. Proin molestie sem eu magna elementum, quis laoreet est tempus. Integer in tempor nulla, at mattis erat. Etiam consequat dui ut nibh dapibus tempus. Curabitur semper luctus massa, vel scelerisque turpis accumsan ultricies.' },
  { name: 'Bronto-burger Cooking Class', location: 'Bronto King', date: '2024-04-24', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mattis mi vitae ex pharetra lacinia. In feugiat ante sit amet nisl consequat lobortis. Praesent sit amet enim sit amet felis malesuada mattis. Pellentesque fringilla placerat odio sit amet convallis. Proin molestie sem eu magna elementum, quis laoreet est tempus. Integer in tempor nulla, at mattis erat. Etiam consequat dui ut nibh dapibus tempus. Curabitur semper luctus massa, vel scelerisque turpis accumsan ultricies.' }
])

users[1].events.create([
  { name: 'Hot dog, hot dog, hot diggity dog', location: 'Mickey Mouse Clubhouse', date: '2023-10-21', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mattis mi vitae ex pharetra lacinia. In feugiat ante sit amet nisl consequat lobortis. Praesent sit amet enim sit amet felis malesuada mattis. Pellentesque fringilla placerat odio sit amet convallis. Proin molestie sem eu magna elementum, quis laoreet est tempus. Integer in tempor nulla, at mattis erat. Etiam consequat dui ut nibh dapibus tempus. Curabitur semper luctus massa, vel scelerisque turpis accumsan ultricies.' }
])

users[2].events.create([
  { name: 'Mushroom Day', location: 'Wonderland', date: '2020-10-21', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mattis mi vitae ex pharetra lacinia. In feugiat ante sit amet nisl consequat lobortis. Praesent sit amet enim sit amet felis malesuada mattis. Pellentesque fringilla placerat odio sit amet convallis. Proin molestie sem eu magna elementum, quis laoreet est tempus. Integer in tempor nulla, at mattis erat. Etiam consequat dui ut nibh dapibus tempus. Curabitur semper luctus massa, vel scelerisque turpis accumsan ultricies.' },
  { name: 'Cookies Happy Hour', location: 'Wonderland', date: '2025-08-23', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mattis mi vitae ex pharetra lacinia. In feugiat ante sit amet nisl consequat lobortis. Praesent sit amet enim sit amet felis malesuada mattis. Pellentesque fringilla placerat odio sit amet convallis. Proin molestie sem eu magna elementum, quis laoreet est tempus. Integer in tempor nulla, at mattis erat. Etiam consequat dui ut nibh dapibus tempus. Curabitur semper luctus massa, vel scelerisque turpis accumsan ultricies.' },
  { name: '5 o\'clock Tea', location: 'Wonderland', date: '2024-04-24', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mattis mi vitae ex pharetra lacinia. In feugiat ante sit amet nisl consequat lobortis. Praesent sit amet enim sit amet felis malesuada mattis. Pellentesque fringilla placerat odio sit amet convallis. Proin molestie sem eu magna elementum, quis laoreet est tempus. Integer in tempor nulla, at mattis erat. Etiam consequat dui ut nibh dapibus tempus. Curabitur semper luctus massa, vel scelerisque turpis accumsan ultricies.' }
])

users[3].events.create([
  { name: 'Free Pink Doughnut', location: 'TreeHouse of Horror', date: '2024-7-23', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mattis mi vitae ex pharetra lacinia. In feugiat ante sit amet nisl consequat lobortis. Praesent sit amet enim sit amet felis malesuada mattis. Pellentesque fringilla placerat odio sit amet convallis. Proin molestie sem eu magna elementum, quis laoreet est tempus. Integer in tempor nulla, at mattis erat. Etiam consequat dui ut nibh dapibus tempus. Curabitur semper luctus massa, vel scelerisque turpis accumsan ultricies.' },
  { name: 'Tomacco Degustation', location: 'Kwik-E-Mart', date: '2020-01-10', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mattis mi vitae ex pharetra lacinia. In feugiat ante sit amet nisl consequat lobortis. Praesent sit amet enim sit amet felis malesuada mattis. Pellentesque fringilla placerat odio sit amet convallis. Proin molestie sem eu magna elementum, quis laoreet est tempus. Integer in tempor nulla, at mattis erat. Etiam consequat dui ut nibh dapibus tempus. Curabitur semper luctus massa, vel scelerisque turpis accumsan ultricies.' }
])

users[4].events.create([
  { name: 'The Krusty Krab\'s Krabby Patty Krush', location: 'Bikini Bottom', date: '2020-10-21', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mattis mi vitae ex pharetra lacinia. In feugiat ante sit amet nisl consequat lobortis. Praesent sit amet enim sit amet felis malesuada mattis. Pellentesque fringilla placerat odio sit amet convallis. Proin molestie sem eu magna elementum, quis laoreet est tempus. Integer in tempor nulla, at mattis erat. Etiam consequat dui ut nibh dapibus tempus. Curabitur semper luctus massa, vel scelerisque turpis accumsan ultricies.' }
])
  

tabby = Breed.find_or_create_by(name: "Tabby",
                     pattern: "Stripes",
                     age: 300,
                     avg_price: 50.0
                    )

tortie = Breed.find_or_create_by(name: "Tortie",
                      pattern: "three colors",
                      age: 800,
                      avg_price: 90.50
                     )

siamese = Breed.find_or_create_by(name: "Siamese",
                     pattern: "three colors",
                     age: 1000,
                     avg_price: 9000.50
                    )

bob = Owner.find_or_create_by(name: "Bob", age: 35)
sally = Owner.find_or_create_by(name: "Sally", age: 35)

bob.cats.find_or_create_by(name: "Autumn", age: 3)
stray = Cat.find_or_create_by(name: "Unknown", age: 2)

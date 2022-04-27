import Foundation
//Um inicializador é um tipo especial de função que é usado
//para criar um objeto de uma classe ou estrutura.

// declare a class
class  Wall {
  var length: Double

  // initializer to initialize property
  init() {
    length = 5.5
    print("Creating a wall.")
    print("Length = ", length)
  }
}

// create an object
var wall1 = Wall()

print()
//convenience init

// também podemos definir um inicializador secundário
//para uma classe chamada inicializador de conveniência.

class University {
  
  var name : String
  var rank : String
  
  init(name : String, rank: String) {
    self.name = name
    self.rank = rank
  }

  // define convenience init
  // Dentro do inicializador de conveniência, chamamos o
  // inicializador designado e atribuímos valores às propriedades.
  convenience init() {
    self.init(name: "Kathmandu University", rank: "1st")
  }
  
}

var university1 = University()
print(university1.name)
print("Rank:", university1.rank)

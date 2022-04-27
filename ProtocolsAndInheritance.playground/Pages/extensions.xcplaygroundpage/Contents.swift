import Foundation

// Em Swift, podemos adicionar novas funcionalidades aos tipos existentes.
// Podemos conseguir isso usando anextensão.

class Circle {
  var radius: Double = 0
}

extension Circle {
  // define computed property
  var area: Double {
    return 3.14 * radius * radius
  }
}

let circle1 = Circle()
circle1.radius = 5

print("Area:", circle1.area)

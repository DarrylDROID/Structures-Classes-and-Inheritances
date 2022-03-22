// Structures

// / Creating a simple Struct

struct Hero {
  var name: String
  var healthPoint: Double
  var role: String = "Mage" 

  func doPhysicalAttack() {
    print("\(name) does 111 damage points")
  }
}

/// Instanciate a Struct 

let xavier = Hero(name: "Xavier", healthPoint: 2_600)

print(xavier.name, 
      "HP: \(xavier.healthPoint)", 
      "Role: \(xavier.role)")

xavier.doPhysicalAttack()

/// Default Values for Initializer 

let melissa = Hero(name: "Melissa", healthPoint: 2_460, role: "Marksman")

print("\n", melissa)

/// Custom Initializer

struct Temperature {
  var celsius: Double

  // Explicit Constructor
  init(celsius: Double) {
    self.celsius = celsius
  }

  // Custom Constructor
  init(fahrenheit: Double) {
    celsius = (fahrenheit - 32) / 1.8
  }

  // Buat custom constructor untuk menerima satuan Kelvin 
  init(kelvin: Double) {
    celsius = kelvin - 273.15
  }

  init() {
    celsius = 0
  }
}

let roomTemperature = Temperature(celsius: 26.5)

let boilingWater = Temperature(fahrenheit: 220)

let diamondDust = Temperature(kelvin: 5)

let freezingWater = Temperature()

print(roomTemperature.celsius)
print(boilingWater.celsius)
print(diamondDust.celsius)
print(freezingWater.celsius)
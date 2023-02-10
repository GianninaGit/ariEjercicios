import Foundation

struct TextBrain {

    var palabra: String
    
    mutating func setPalabra(unaPalabraRecibida: String) {
        palabra = unaPalabraRecibida
    }
    
    mutating func aMinuscula() -> String {
        return palabra.lowercased()
    }
    
    mutating func aMayuscula() -> String {
        return palabra.uppercased()
    }

    mutating func aBonus() -> String {
        var cajita = ""
        for letra in palabra {
            cajita = cajita + String(letra) + " "
        }
        return cajita
    }
}

//
//  TextBrain.swift
//  EditText
//
//  Created by Giannina on 8/2/23.
//

import Foundation

struct TextBrain {
    
    let titulos1: [String] = ["BONUS!", "Aquí aparecerá el bonus","Texto en minúscula:", "Aquí aparecerá el texto en minúscula", "Texto en mayúscula:", "Aquí aparecerá el texto en mayúscula", "Convertir", "Resetear"]
    
    func aMinuscula(unaPalabra: String) -> String {
        var palabra: String
        palabra = unaPalabra
        return palabra.lowercased()
    }
    
    func aMayuscula(unaPalabra: String) -> String {
        var palabra: String
        palabra = unaPalabra
        return palabra.uppercased()
    }

    var palabra = "Giannina"

    func aBonus(unaPalabra: String) -> String{
        var cajita = ""

        for letra in unaPalabra {
            cajita = cajita + String(letra) + " "
        }
        print(cajita)
        return cajita
        
    }
    
    func updateTituloBonus() -> String {
        return titulos1[0]
    }
    func updateTituloMinuscula() -> String {
        return titulos1[2]
    }
    func updateTituloMayuscula() -> String {
        return titulos1[4]
    }
    func updateTituloConvertButton() -> String {
        return titulos1[6]
    }
    func updateTituloResetButton() -> String {
        return titulos1[7]
    }
    func updateTextBonus() -> String {
        return titulos1[1]
    }
    func updateTextMinuscula() -> String {
        return titulos1[3]
    }
    func updateTextMayuscula() -> String {
        return titulos1[5]
    }

}

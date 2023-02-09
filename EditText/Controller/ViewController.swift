//
//  ViewController.swift
//  EditText
//
//  Created by Giannina on 8/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bonusTitleLabel: UILabel!
    @IBOutlet weak var bonusLabel: UILabel!
    @IBOutlet weak var minusculaTitleLabel: UILabel!
    @IBOutlet weak var minusculaLabel: UILabel!
    @IBOutlet weak var mayusculaTitleLabel: UILabel!
    @IBOutlet weak var mayusculaLabel: UILabel!
    @IBOutlet weak var inputTextLabel: UITextField!
    @IBOutlet weak var convertButtonLabel: UIButton!
    @IBOutlet weak var resetButtonLabel: UIButton!
    
    
    var textBrain = TextBrain()
    
    
    @IBAction func convertButtonPressed(_ sender: UIButton) {
        // 3) Al apretar el botón, quiero que cambien los Labels con un texto (variable nuevoTexto hardcodeada y dsp el texto ingresado por el usuario)
        bonusLabel.text = textBrain.aBonus(unaPalabra: inputTextLabel.text!)
        minusculaLabel.text = textBrain.aMinuscula(unaPalabra: inputTextLabel.text!)
        mayusculaLabel.text = textBrain.aMayuscula(unaPalabra: inputTextLabel.text!)
        print(textBrain.aMinuscula(unaPalabra: inputTextLabel.text!)+"wiwiw")
    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        // 4) Al apretar el botón, quiero que cambien los Labels como eran al principio
        bonusLabel.text = textBrain.updateTextBonus()
        minusculaLabel.text = textBrain.updateTextMinuscula()
        mayusculaLabel.text = textBrain.updateTextMayuscula()
        inputTextLabel.text = ""

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 1) Al abrir la app quiero ver esto:
        // 2) Pasarlo a model
        bonusTitleLabel.text = textBrain.updateTituloBonus()
        minusculaTitleLabel.text = textBrain.updateTituloMinuscula()
        mayusculaTitleLabel.text = textBrain.updateTituloMayuscula()
        convertButtonLabel.setTitle(textBrain.updateTituloConvertButton(), for: .normal)
        resetButtonLabel.setTitle(textBrain.updateTituloResetButton(), for: .normal)

        bonusLabel.text = textBrain.updateTextBonus()
        minusculaLabel.text = textBrain.updateTextMinuscula()
        mayusculaLabel.text = textBrain.updateTextMayuscula()
        
        
        
        
        
    }


}


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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bonusTitleLabel.text = "BONUS!"
        minusculaTitleLabel.text = "Texto en minúscula:"
        mayusculaTitleLabel.text = "Texto en mayúscula:"
        convertButtonLabel.setTitle("Convertir", for: .normal)
        resetButtonLabel.setTitle("Resetear", for: .normal)
        updateUI()
    }

    var textBrain = TextBrain(palabra: "")
    
    @IBAction func convertButtonPressed(_ sender: UIButton) {
        updateUI()
    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        inputTextLabel.text! = ""
        updateUI()
    }
    
    func updateUI() {
        if inputTextLabel.text! != "" {
            textBrain.setPalabra(unaPalabraRecibida: inputTextLabel.text!)
            bonusLabel.text = textBrain.aBonus()
            minusculaLabel.text = textBrain.aMinuscula()
            mayusculaLabel.text = textBrain.aMayuscula()
        } else {
            bonusLabel.text = "Aquí aparecerá el bonus"
            minusculaLabel.text = "Aquí aparecerá el texto en minúscula"
            mayusculaLabel.text = "Aquí aparecerá el texto en mayúscula"
        }
    }
}


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bonusTitleLabel: UILabel!
    @IBOutlet weak var bonusLabel: UILabel!
    @IBOutlet weak var minusculaTitleLabel: UILabel!
    @IBOutlet weak var minusculaLabel: UILabel!
    @IBOutlet weak var mayusculaTitleLabel: UILabel!
    @IBOutlet weak var mayusculaLabel: UILabel!
    @IBOutlet weak var inputTextLabel: UITextField!
    
    var textBrain = TextBrain(palabra: "")
 
    @IBAction func modifyText(_ sender: UITextField) {
        textBrain.setPalabra(unaPalabraRecibida: inputTextLabel.text!)
        updateUI()
    }

    func updateUI() {
            bonusLabel.text = textBrain.aBonus()
            minusculaLabel.text = textBrain.aMinuscula()
            mayusculaLabel.text = textBrain.aMayuscula()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bonusTitleLabel.text = "BONUS!"
        minusculaTitleLabel.text = "Texto en minúscula:"
        mayusculaTitleLabel.text = "Texto en mayúscula:"
        
        updateUI()
    }
}



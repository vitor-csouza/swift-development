//
//  ViewController.swift
//  UIKIT Swift
//
//  Created by Usuário Convidado on 15/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblIdade: UILabel!
    @IBOutlet weak var stpIdade: UIStepper!
    @IBOutlet weak var lblPAS: UILabel!
    @IBOutlet weak var lblPAD: UILabel!
    @IBOutlet weak var lblTipo: UILabel!
    @IBOutlet weak var segRisco: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func mudarValorIdade(_ sender: Any) {
        lblIdade.text = String(Int(stpIdade.value))
    }
    
    @IBAction func mudarValorSlidePas(_ sender: UISlider) {
        lblPAS.text = String(Int(sender.value))
    }
    
    @IBAction func mudarValorSliderPAD(_ sender: UISlider) {
        lblPAD.text = String(Int(sender.value))
    }
    
    
    @IBAction func receberLink(_ sender: Any) {
        let alerta = UIAlertController(
            title: "Forme para receber seu exame",
            message: "Faça sua escolha",
            preferredStyle: UIAlertController.Style.actionSheet)
        
        alerta.addAction(UIAlertAction(
            title: "SMS",
            style: UIAlertAction.Style.default,
            handler: {action in
                self.lblTipo.text = action.title
            }))
        
        alerta.addAction(UIAlertAction(
            title: "Email",
            style: UIAlertAction.Style.default,
            handler: {action in
                self.lblTipo.text = action.title
            }))
        
        alerta.addAction(UIAlertAction(
            title: "Cancelar",
            style: UIAlertAction.Style.cancel,
            handler: nil))
        
        present(alerta, animated: true)
    }
    
    @IBAction func mudarIndice(_ sender: Any) {
        
    }
}

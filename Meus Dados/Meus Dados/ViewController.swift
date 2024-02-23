//
//  ViewController.swift
//  Meus Dados
//
//  Created by Vitor Souza on 22/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbNome: UILabel!
    @IBOutlet weak var lbCidade: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbNome.text="Seu nome é..."
        lbCidade.text="Sua cidade é..."
    }

    @IBAction func Exibir(_ sender: Any) {
        lbNome.text="Vitor"
        lbCidade.text="São Paulo"
    }
    
}


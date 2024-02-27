//
//  ViewController.swift
//  Meus Dados
//
//  Created by Usuário Convidado on 22/02/24.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var lbNome: UILabel!
    @IBOutlet weak var lbCidade: UILabel!
    @IBOutlet weak var lbIdade: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbNome.text="Seu nome é..."
        lbCidade.text="Sua cidade é...."
        lbIdade.text="Sua idade é..."
    }

    @IBAction func Exibir(_ sender: Any) {
        lbNome.text="Vitor Souza"
        lbCidade.text="São Paulo"
        lbIdade.text="22 anos"
    }
    
    @IBAction func Limpar(_ sender: Any) {
        viewDidLoad()
    }
}


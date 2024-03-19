//
//  Enfermeira.swift
//  Exercicio001
//
//  Created by Usuário Convidado on 18/03/24.
//

import Cocoa

class Enfermeira: NSObject {
    
    var nome:String
    var idade:Int
    var altura: Float
    var disponivel: Bool
    

    
    init(nome: String, idade: Int, altura: Float, disponivel: Bool) {
        self.nome = nome
        self.idade = idade
        self.altura = altura
        self.disponivel = disponivel
    }
    
    func iniciarTratamento(){
        print("Tratamento iniciado")
    }
    
    func calcularTemperatura(temperatura:Float) -> Bool {
        if temperatura > 37{
            return true
        } else {
            return false
        }
    }
    
    func medicar(nome: String, medicamento: String) -> String {
        return "Medicando paciente \(nome) com \(medicamento)"
    }
    
    func tempoMedicacao(febre: Bool) -> Int {
        if febre == true{
            return 3
        } else {
            return 0
        }
    }
    
    deinit{
        
    }
    

}

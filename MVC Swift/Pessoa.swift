//
//  Pessoa.swift
//  MVC Swift
//
//  Created by Usuário Convidado on 25/03/24.
//

import Foundation


class Pessoa{
    
    var nome:String!
    var peso:Float!
    var altura:Float!
    var imc:Float!
    
    init(){
        
    }
    
    init(nome: String!, peso: Float!, altura: Float!) {
        self.nome = nome
        self.peso = peso
        self.altura = altura
    }
    
    func calcular(){
        imc = peso/(altura*altura)
    }
    
    func calcular_2()->Float{
        return peso/(altura*altura)
    }
    
}

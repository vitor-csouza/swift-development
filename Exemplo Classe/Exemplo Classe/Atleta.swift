//
//  Atleta.swift
//  Exemplo Classe
//
//  Created by Usuário Convidado on 04/03/24.
//

import Cocoa

class Atleta: NSObject {
    
    var nome:String
    var idade:Int
    
    override init(){
        self.nome = ""
        self.idade = 0
    }
    
    init(nome:String, idade:Int){
        self.nome = nome
        self.idade = idade
    }
    deinit{
        print("\(self.nome) sendo desinicializado")
    }
    
    //Criando um sub-rotina(Sem retorno)
    func calculaIMC(peso:Float,altura:Float){
        let imc = peso / (altura * altura)
        let formatado = String(format: "%0.2f", imc)
        print("O IMC de \(self.nome) é \(formatado)")
    }
    //Criando uma function(Com retorno)
    func calcularIMC_2(peso:Float,altura:Float)->Float{
        return peso / pow(altura,2)
    }
    //Abaixo temos um método de classe, tipo o método
    //estático do Java. Acima foram os métodos de Instância
    
    func exibirAtleta() -> String {
        return "Atleta é: " + self.nome
    }
    
    class func alerta()->String{
        return "A competição irá iniciar em breve"
    }
    
    class func alerta(tempoEmMinutos:Int)->String{
        return "A competição irá iniciar em \(tempoEmMinutos) minutos"
    }
}

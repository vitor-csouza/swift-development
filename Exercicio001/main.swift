//
//  main.swift
//  Exercicio001
//
//  Created by Usuário Convidado on 18/03/24.
//

import Foundation

var e = Enfermeira(nome: "Julia", idade: 25, altura: 1.68, disponivel: true)

var febre = e.calcularTemperatura(temperatura: 37.8)

var medicar = e.medicar(nome: "Carlos", medicamento: "Dipirona")

var tempoMedicacao = e.tempoMedicacao(febre: febre)

print("Nome: "+e.nome)

e.iniciarTratamento()

if febre == true {
    print("Paciente com febre")
} else {
    print("Paciente sem febre")
}

print(medicar)

print("O paciente deve tomar medicamento por \(tempoMedicacao) dias")


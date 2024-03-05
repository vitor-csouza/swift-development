//
//  main.swift
//  Exemplo Classe
//
//  Created by Usuário Convidado on 04/03/24.
//

import Foundation

//print("Hello, World!")

var a = Atleta()

a.nome = "Carlos"
a.idade = 34

print("O atleta \(a.nome) tem \(a.idade) anos")

var a2 = Atleta(nome: "Ana", idade: 21)

print("A atleta \(a2.nome) tem \(a2.idade) anos")

var a3: Atleta?

a3 = Atleta(nome: "Marcos", idade: 32)

print("A atleta \(a3!.nome) tem \(a3!.idade) anos")

a3 = nil

var referencial1: Pessoa?
var referencial2: Pessoa?
var referencial3: Pessoa?

referencial1 = Pessoa(nome: "Paula", cidade: "Manaus")
referencial2 = referencial1
referencial3 = referencial1

referencial1 = nil
referencial2 = nil
referencial3 = nil

a.calcIMC(peso:100, altura:1.85)

var resultado: () = a2.calcIMC(peso:60, altura:1.70)
print(resultado)

print(Atleta.alerta())



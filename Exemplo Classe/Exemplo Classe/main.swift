//
//  main.swift
//  Exemplo Classe
//
//  Created by Usuário Convidado on 04/03/24.
//

import Foundation

//print("Hello, World!")
//criando um objeto
var a = Atleta()
//fazendo o set
a.nome = "Ana"
a.idade=25
//fazendo o get
print("O Atleta \(a.nome) tem \(a.idade) anos")

//Criando um objeto com o construtor de dois parâmetros
var a2 = Atleta(nome: "Carlos", idade: 27)
print("O Atleta \(a2.nome) tem \(a2.idade) anos")

var a3: Atleta?
a3 = Atleta(nome: "Caio", idade: 45)
print("O Atleta \(a3!.nome) tem \(a3!.idade) anos")
a3 = nil

var referencia1: Pessoa?
var referencia2: Pessoa?
var referencia3: Pessoa?
referencia1 = Pessoa(nome: "Marina", cidade: "Florianópolis")
referencia2 = referencia1
referencia3 = referencia1

referencia1 = nil
referencia2 = nil
referencia3=nil

a2.calculaIMC(peso: 97, altura: 1.87)
print(a.calculaIMC(peso: 55, altura: 1.60))
var resultado = a.calculaIMC(peso: 55, altura: 1.60)
print(resultado)

print(Atleta.alerta())

var p = Paratleta()
p.nome = "Jonas"
p.idade = 27
p.deficiencia = "Braço direito amputado"
print(p.exibirAtleta())

print(Atleta.alerta(tempoEmMinutos: 26))

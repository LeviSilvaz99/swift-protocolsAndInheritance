import Foundation

//Um protocolo define um modelo de métodos, propriedades e outros requisitos que se adequam a uma
//determinada tarefa ou funcionalidade.

// O protocolo pode então ser adotado por uma classe, estrutura ou enumeração para fornecer uma
// implementação real desses requisitos.

// protocolo define um modelo de métodos ou propriedades que podem ser adotados por classes
// (ou qualquer outro tipo).
protocol Conta {
    
    var valor: Double { get }
    
    func calcular(saldo: Double) -> Double
    
}

final class Credito: Conta {
     
    var valor: Double
    
    init(valor: Double) {
        self.valor = valor
    }
    
    func calcular(saldo: Double) -> Double {
        return saldo + valor
    }
}

final class Debito: Conta {
    
    var valor: Double
    
    init(valor: Double) {
        self.valor = valor
    }
    
    func calcular(saldo: Double) -> Double {
        return saldo - valor
    }
    
}

var extrato: [Conta] = []
extrato.append(Credito(valor: 1000))
extrato.append(Debito(valor: 100))
extrato.append(Debito(valor: 50))
extrato.append(Debito(valor: 75))
extrato.append(Debito(valor: 10))

var saldo: Double = 0.0
extrato.forEach { (conta) in
    saldo = conta.calcular(saldo: saldo)
}

print(saldo)

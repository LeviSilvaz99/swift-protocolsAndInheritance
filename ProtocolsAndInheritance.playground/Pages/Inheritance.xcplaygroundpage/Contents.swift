import Foundation
//heranca

class Animal { //Superclasse / pai
    
    let nome: String
    
    init(nome: String){
        self.nome = nome
    }
    
    func movimentar(){
        print("MOVIMENTO")
    }
    
    func comer () {
        print("COMER")
    }
    
}

//Subclasse // classe filha
class Cachorro: Animal{
    
    var corDoPelo: String
    
    init(corDoPelo: String, nome: String) {
        self.corDoPelo = corDoPelo
        super.init(nome: nome)
    }
    
}

var hanna: Cachorro = Cachorro(corDoPelo: "Branco", nome: "Hanna")
hanna.comer()
hanna.movimentar()
print(hanna.nome)
print(hanna.corDoPelo)

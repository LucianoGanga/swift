//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int {
    
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad: Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String) {
        // Imprimir velocidad actual
        print((velocidad.rawValue, String(velocidad)))

        // Actúo cambiando la velocidad en base a la velocidad actual
        switch(velocidad) {
        case .Apagado:
            velocidad = Velocidades.VelocidadBaja
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
        case .VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
        
        }
        
        return(velocidad.rawValue, String(velocidad))
    }
    
}

let car = Auto.init()


for iteration in 0..<20 {
    car.cambioDeVelocidad()
}

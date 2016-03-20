//
//  Datos.swift
//  Hamburguesas
//
//  Created by Luciano Ganga on 3/20/16.
//  Copyright © 2016 Luciano Ganga. All rights reserved.
//

import Foundation

class ColeccionDePaises {

    let paises: [String] = ["Argentina", "Chile", "Mexico", "Estados Unidos", "España", "Inglaterra", "Alemania", "Francia", "Bélgica", "Perú", "Brasil", "Canada", "Italia", "Nueva Zelanda", "Australia", "Venezuela", "Serbia", "Rusia", "Holanda", "Uruguay", "Paraguay"]
    
    func obtenPais()->String {
        return paises[Int(arc4random()) % paises.count]
    }
    
}



class ColeccionDeHamburguesas {
    
    let hamburguesas: [String] = ["Hamburguesa de ternera y Bacon", "SuperBurguer", "Dyer’s Double", "Hamburguesa doble", "Cashew Burger", "Juicy Lucy", "Tap Room Burger", "Cheeseburger", "Bacon Double Cheeseburger", "The Burger", "Cheeseburger with Fried Onions", "The Big Tasty", "Sirloin Burger", "Supper Burger", "Baltimore Burger", "Bacon-Onion Blue Cheeseburger", "Double Bypass Burger", "Thunder Burger", "The Burgamo", "Chapman Burger", "The All American"]
    
    
    func obtenHamburguesa()->String {
        return hamburguesas[Int(arc4random()) % hamburguesas.count]
    }
    
}


//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Luciano Ganga on 3/20/16.
//  Copyright © 2016 Luciano Ganga. All rights reserved.
//

import UIKit
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pais: UILabel!
    @IBOutlet weak var hamburguesa: UILabel!
    @IBOutlet weak var cambiaHamburguesa: UIButton!
    
    let paises = ColeccionDePaises.init()
    let hamburguesas = ColeccionDeHamburguesas.init()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func cambiar(sender: AnyObject) {
        
        pais.text = paises.obtenPais()
        
        hamburguesa.text = hamburguesas.obtenHamburguesa()

        view.backgroundColor = UIColor(red: getRandomColorCode(), green: getRandomColorCode(), blue: getRandomColorCode(), alpha: 1)
    }

}

func getRandomColorCode() -> CGFloat {
    return (CGFloat(arc4random()) % 255) / 255.0
}


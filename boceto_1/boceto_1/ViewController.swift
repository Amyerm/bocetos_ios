//
//  ViewController.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBSegueAction func moviendome_de_pantalla(_ coder: NSCoder) -> ControladorVistaCitas? {
        return ControladorVistaCitas(titulo_secundario: "Nombre Barbaro", coder: coder)
    }
    
}


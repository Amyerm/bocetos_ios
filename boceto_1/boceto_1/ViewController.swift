//
//  ViewController.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//

import UIKit

class ViewController: UIViewController {
    
    var cita_para_enviar: Cita = Cita(quien_lo_dijo: "Creeper", que_dijo: "Tssseñor")
    var citas_disponibles: GeneradorDeCitas = GeneradorDeCitas()
        
    @IBOutlet weak var labelcito: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
 
    }
    
    @IBSegueAction func al_abrir_pantalla_citas(_ coder: NSCoder) -> ControladorPantallaCitas? {
        let citas = citas_disponibles.citas_creadas
                let destinoVC = ControladorPantallaCitas(coder: coder)!
                destinoVC.citas = citas
        
                return destinoVC
            }
    
    @IBAction func volver_a_pantalla_inicio(segue: UIStoryboardSegue)
    {
        
    }
}


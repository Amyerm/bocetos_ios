//
//  ControladorPantallaCitas.swift
//  boceto_1
//
//  Created by alumno on 9/23/24.
//

import UIKit

class ControladorPantallaCitas: UIViewController {

    @IBOutlet weak var nombre_de_quien_lo_dijo: UILabel!
    
    @IBOutlet weak var que_dijo_muro_texto: UILabel!
    
    
    var citas: [Cita] = []
        

    override func viewDidLoad() {
            super.viewDidLoad()
            inicializar_pantalla()
        }
        
        
        func inicializar_pantalla(){
            let citas = GuardarCita.shared.citas // Accede a las citas almacenadas
                    
                    if citas.isEmpty {
                        nombre_de_quien_lo_dijo.text = "No hay citas disponibles."
                        que_dijo_muro_texto.text = ""
                    } else {
                        let cita = citas.randomElement()!
                        nombre_de_quien_lo_dijo.text = cita.nombre
                        que_dijo_muro_texto.text = cita.texto
                    }
                }
            }

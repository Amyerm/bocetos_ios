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
 
        actualizar_cantidad()
    }
    
    func actualizar_cantidad(){
        labelcito.text = String(citas_disponibles.citas_creadas.count)
        }

    @IBSegueAction func al_abrir_pantalla_citas(_ coder: NSCoder) -> ControladorPantallaCitas? {
        return ControladorPantallaCitas(cita_para_citar: citas_disponibles.obtener_cita_aleatoria(), coder: coder)
    }
    
    @IBAction func volver_a_pantalla_inicio(segue: UIStoryboardSegue)
    {
        if let pantalla_cita = segue.source as? ControladorGeneradorCita {
                    if let citaCreada = pantalla_cita.cita_creada {
                        citas_disponibles.agregar_cita(citaCreada)
                    }
                }
                actualizar_cantidad()
            }
}


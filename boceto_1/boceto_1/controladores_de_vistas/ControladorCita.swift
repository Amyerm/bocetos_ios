//
//  ControladorCita.swift
//  boceto_1
//
//  Created by alumno on 9/20/24.
//

import UIKit

class ControladorVistaCitas: UIViewController {

    var texto: String
    @IBOutlet weak var nombre_de_quien_lo_dijo: UILabel!
    
    @IBOutlet weak var que_dijo_que: UILabel!
    
    required init?(coder: NSCoder){
    }
    
    init(titulo_secundario: String, coder: NSCoder){
        
        texto = titulo_secundario
        
        super.init(coder: coder)!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}


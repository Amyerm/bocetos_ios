//
//  GuardarCita.swift
//  boceto_1
//
//  Created by alumno on 10/4/24.
//

import Foundation
class GuardarCita {
    static let shared = GuardarCita()
    
    private(set) var citas: [Cita] = []

    private init() {}

    func agregarCita(_ cita: Cita) {
        citas.append(cita)
    }

    func obtenerCitas() -> [Cita] {
        return citas
    }
}

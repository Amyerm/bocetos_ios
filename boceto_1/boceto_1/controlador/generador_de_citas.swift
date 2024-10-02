//
//  generador_de_citas.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//

import Foundation

class GeneradorDeCitas{
    var citas_creadas: Array<Cita>
       
       init() {
           citas_creadas = []
       }
       
       func agregar_cita_manual(_ que_dijo: String, quien_lo_dijo: String) {
           let cita_generada = Cita(quien_lo_dijo: quien_lo_dijo, que_dijo: que_dijo)
           citas_creadas.append(cita_generada)
       }
       
       func agregar_cita(_ cita_nueva: Cita) {
           citas_creadas.append(cita_nueva)
       }
       
       func obtener_cita_aleatoria() -> Cita {
           // Asegúrate de que haya citas disponibles antes de intentar obtener una
           guard !citas_creadas.isEmpty else {
               // Retorna un valor predeterminado o maneja el caso según lo que desees hacer
               return Cita(quien_lo_dijo: "Nadie", que_dijo: "No hay citas disponibles")
           }
           return citas_creadas[Int.random(in: 0..<citas_creadas.count)]
       }
   }

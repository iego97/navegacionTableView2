//
//  detalleMateriaController.swift
//  NavegacionTableView
//
//  Created by Alumno on 20/09/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class DetalleMateriaController : UIViewController
{
    @IBOutlet weak var lblCalificacionPrimerParcial: UILabel!
    @IBOutlet weak var lblCalificacionSegundoParcial: UILabel!
    @IBOutlet weak var lblCalificacionTercerParcial: UILabel!
    @IBOutlet weak var lblCalificacionFinalParcial: UILabel!
    
    var materia : Materia?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let materiaActual = materia{
            
            self.title = materiaActual.nombre
            
            if let primerParcial = materiaActual.calificacionPrimerParcial {
                lblCalificacionPrimerParcial.text = "\(primerParcial)"
            }else{
                lblCalificacionPrimerParcial.text = "-"
            }
            
            if let segundoParcial = materiaActual.calificacionSegundoParcial{
                lblCalificacionSegundoParcial.text = "\(segundoParcial)"
            }else{
                lblCalificacionSegundoParcial.text = "-"
            }
            
            if let tercerParcial = materiaActual.calificacionTercerParcial{
                lblCalificacionTercerParcial.text = "\(tercerParcial)"
            }else{
                lblCalificacionTercerParcial.text = "-"
            }
            
            if let calificacionFinal = materiaActual.calificacionFinal{
                
                lblCalificacionFinalParcial.text = "\(calificacionFinal)"
            }else{
                lblCalificacionFinalParcial.text = "-"
            }
            
            
        }
    }
    
    
    
}

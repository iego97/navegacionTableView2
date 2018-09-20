//
//  ViewController.swift
//  NavegacionTableView
//
//  Created by Alumno on 19/09/18.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tbMateria: UITableView!
    
    let materias : [Materia] = [Materia (nombre: "Programaciòn de dispositivos móviles"),
                                Materia (nombre: "Tratamiento de imagen"),
                                Materia (nombre: "Animación por computadora I"),
                                Materia (nombre: "Pensamiento social cristiano"),
                                Materia (nombre: "México en el contexto global"),
                                Materia (nombre: "Redes computacionales"),
                                Materia (nombre: "Mercadotecnia")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellMateria") as! CeldaMateria
        
        celda.lblNombreMateria.text = materias[indexPath.row].nombre
        
        return celda
        
    }
    

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 93
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetalleMateria"
        {
            let destino = segue.destination as? DetalleMateriaController
            
            destino?.materia = materias[(tbMateria.indexPathForSelectedRow?.row)!]
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Materias"
        
        materias[0].calificacionPrimerParcial = 10
        materias[2].calificacionPrimerParcial = 9
        materias[3].calificacionPrimerParcial = 7
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


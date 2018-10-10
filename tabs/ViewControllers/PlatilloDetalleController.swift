//
//  PlatilloDetalleController.swift
//  tabs
//
//  Created by Alumno on 09/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class PlatilloDetalleController : UIViewController {
    @IBOutlet weak var imgPlatillo: UIImageView!
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!
    @IBOutlet weak var lblUsuario: UILabel!
    @IBOutlet weak var lblComentario: UILabel!
    
    var platillo : Platillo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let platilloSeleccionado = platillo {
            self.title = platilloSeleccionado.nombrePlatillo
            
            lblDescripcion.text = platilloSeleccionado.descripcionPlatillo
            imgPlatillo.image = platilloSeleccionado.imagenDetallePlatillo
            
            lblUsuario.text = platilloSeleccionado.comentariosPlatillo[0].nombreComentario
            lblComentario.text = platilloSeleccionado.comentariosPlatillo[0].textoComentario
        }
    }
}

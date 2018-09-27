//
//  LugarDetalle.swift
//  tabs
//
//  Created by Alumno on 27/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class LugarDetalleController : UIViewController{
    @IBOutlet weak var imgLugarDetalle: UIImageView!
    @IBOutlet weak var lblLugarDetalle: UILabel!
    
    var lugar : Lugar?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let lugarSeleccionado = lugar {
            self.title = lugarSeleccionado.nombreLugar
            
            let lugarDescripcion = lugarSeleccionado.descripcionLugar
            lblLugarDetalle.text = lugarDescripcion
            imgLugarDetalle.image = lugarSeleccionado.imagenDetalleLugar
        }
    }
}

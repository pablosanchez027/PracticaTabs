//
//  Platillo.swift
//  tabs
//
//  Created by Alumno on 04/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Platillo {
    var nombrePlatillo : String
    var descripcionPlatillo : String
    var imagenPlatillo : UIImage
    var imagenDetallePlatillo : UIImage
    
    init() {
        nombrePlatillo = ""
        descripcionPlatillo = ""
        imagenPlatillo = UIImage()
        imagenDetallePlatillo = UIImage()
    }
    
    init(nombrePlatillo : String, descripcionPlatillo : String, imagenPlatillo : UIImage, imagenDetallePlatillo : UIImage) {
        self.nombrePlatillo = nombrePlatillo
        self.descripcionPlatillo = descripcionPlatillo
        self.imagenPlatillo = imagenPlatillo
        self.imagenDetallePlatillo = imagenDetallePlatillo
    }
}

//
//  Lugar.swift
//  tabs
//
//  Created by Alumno on 26/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Lugar {
    var nombreLugar : String
    var descripcionLugar : String
    var imagenLugar : UIImage
    var imagenDetalleLugar : UIImage
    
    init() {
        nombreLugar = ""
        descripcionLugar = ""
        imagenLugar = UIImage()
        imagenDetalleLugar = UIImage()
    }
    
    init(nombreLugar : String, descripcionLugar : String, imagenLugar : UIImage, imagenDetalleLugar : UIImage) {
        self.nombreLugar = nombreLugar
        self.descripcionLugar = descripcionLugar
        self.imagenLugar = imagenLugar
        self.imagenDetalleLugar = imagenDetalleLugar
    }
}

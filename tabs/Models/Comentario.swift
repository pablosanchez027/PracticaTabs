//
//  Comentario.swift
//  tabs
//
//  Created by Alumno on 09/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Comentario {
    var nombreComentario : String
    var textoComentario : String
    
    init() {
        nombreComentario = ""
        textoComentario = ""
    }
    
    init(nombreComentario : String, textoComentario : String) {
        self.nombreComentario = nombreComentario
        self.textoComentario = textoComentario
    }
}

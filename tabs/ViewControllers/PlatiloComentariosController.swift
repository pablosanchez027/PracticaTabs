//
//  PlatiloComentariosController.swift
//  tabs
//
//  Created by Alumno on 10/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class PlatilloComentariosController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var comentarios : [Comentario]?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (comentarios?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellComentario") as! CeldaComentario
        
        celda.lblUsuario.text = comentarios?[indexPath.row].nombreComentario
        celda.lblComentario.text = comentarios?[indexPath.row].textoComentario
        
        return celda
    }
    
    override func viewDidLoad() {
        self.title = "Kommentare"
    }
}

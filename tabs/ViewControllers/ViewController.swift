//
//  ViewController.swift
//  tabs
//
//  Created by Alumno on 25/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var TbLugares: UITableViewCell!
    let Lugares : [Lugar] = [Lugar(nombreLugar: "Berliner Dom", descripcionLugar: "Catedral de Berlin", imagenLugar: #imageLiteral(resourceName: "BerlinerDom"), imagenDetalleLugar: #imageLiteral(resourceName: "BerlinerDom")),
                             Lugar(nombreLugar: "Brandenburg Tör", descripcionLugar: "Puerta de Brandemburgo", imagenLugar: #imageLiteral(resourceName: "BrandenburgTör"), imagenDetalleLugar: #imageLiteral(resourceName: "BrandenburgTör")),
                             Lugar(nombreLugar: "Holocaust-Mahnmal", descripcionLugar: "Memorial del Holocausto", imagenLugar: #imageLiteral(resourceName: "Holocaust-Mahnmal"), imagenDetalleLugar: #imageLiteral(resourceName: "Holocaust-Mahnmal")),
                             Lugar(nombreLugar: "Pergamonmuseum", descripcionLugar: "Museo de Pergamo", imagenLugar: #imageLiteral(resourceName: "Pergamonmuseum "), imagenDetalleLugar: #imageLiteral(resourceName: "Pergamonmuseum")),
                             Lugar(nombreLugar: "Reichstagsgebäude", descripcionLugar: "Edificio Parlamentario", imagenLugar: #imageLiteral(resourceName: "reichstagsgebäude"), imagenDetalleLugar: #imageLiteral(resourceName: "reichstagsgebäude"))]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Lugares.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellLugar") as! CeldaLugar
        celda.lblLugarNombre.text = Lugares[indexPath.row].nombreLugar
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


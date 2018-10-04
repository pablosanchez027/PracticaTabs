//
//  ViewController.swift
//  tabs
//
//  Created by Alumno on 25/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewControllerLugares: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tbLugares: UITableView!
    let Lugares : [Lugar] = [
        Lugar(nombreLugar: "Berliner Dom", descripcionLugar: "Catedral de Berlin", imagenLugar: UIImage(named: "BerlinerDom")!, imagenDetalleLugar: UIImage(named: "BerlinerDom")!),
        Lugar(nombreLugar: "Brandenburg Tör", descripcionLugar: "Puerta de Brandemburgo", imagenLugar: UIImage(named: "BrandenburgTör")!, imagenDetalleLugar: UIImage(named: "BrandenburgTör")!),
        Lugar(nombreLugar: "Holocaust-Mahnmal", descripcionLugar: "Memorial del Holocausto", imagenLugar: UIImage(named: "Holocaust-Mahnmal")!, imagenDetalleLugar: UIImage(named: "Holocaust-Mahnmal")!),
        Lugar(nombreLugar: "Pergamonmuseum", descripcionLugar: "Museo de Pérgamo", imagenLugar: UIImage(named: "Pergamonmuseum")!, imagenDetalleLugar: UIImage(named: "Pergamonmuseum")!),
        Lugar(nombreLugar: "Reichstagsgebäude", descripcionLugar: "Edificio Parlamentario", imagenLugar: UIImage(named: "Reichstagsgebäude")!, imagenDetalleLugar: UIImage(named: "Reichstagsgebäude")!)
    ]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Lugares.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellLugar") as! CeldaLugar
        celda.lblLugarNombre.text = Lugares[indexPath.row].nombreLugar
        celda.imgLugarCell.image = Lugares[indexPath.row].imagenLugar
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Sehenswürdigkeiten"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToLugarDetalle" {
            let destino = segue.destination as? LugarDetalleController 
            
            destino?.lugar = Lugares[(tbLugares.indexPathForSelectedRow?.row)!]
        }
    }
}



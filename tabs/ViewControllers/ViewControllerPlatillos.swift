//
//  ViewControllerPlatillos.swift
//  tabs
//
//  Created by Alumno on 04/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewControllerPlatillos: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tbPlatillos: UITableView!
    let Platillos : [Platillo] = [
        Platillo(nombrePlatillo: "Bratkartoffeln", descripcionPlatillo: "Bratkartoffeln ist eine allgemein gehaltene Bezeichnung verschiedener Rezepturen, in denen rohe oder vorgegarte Kartoffeln gebraten werden.", imagenPlatillo: UIImage(named: "Bratkartoffeln")!, imagenDetallePlatillo: UIImage(named: "Bratkartoffeln")!, comentariosPlatillo: [Comentario(nombreComentario: "Hitler", textoComentario: "SIEG HEIL"), Comentario(nombreComentario: "Merkel", textoComentario: "Ich liebe er")]),
        Platillo(nombrePlatillo: "Kartoffelsalat", descripcionPlatillo: "Kartoffelsalat wird aus gekochten Kartoffeln und weiteren Zutaten hergestellt. Grundsätzlich lassen sich die Zubereitungsarten mit und ohne Mayonnaise unterscheiden. In Süddeutschland und Österreich ist der Ausdruck Erdäpfelsalat verbreitet, die schweizerdeutsche Bezeichnung ist Härdöpfelsalat.", imagenPlatillo: UIImage(named: "Kartoffelsalat")!, imagenDetallePlatillo: UIImage(named: "Kartoffelsalat")!, comentariosPlatillo: [Comentario(nombreComentario: "Hitler", textoComentario: "SIEG HEIL"), Comentario(nombreComentario: "Merkel", textoComentario: "Ich liebe er")]),
        Platillo(nombrePlatillo: "Kohlrouladen", descripcionPlatillo: "Kohlrouladen, Kohlrollen, Krautwurst oder Krautwickel sind ein besonders in Europa und Westasien verbreitetes Gericht aus in verschiedenen Varianten gefüllten Kohlblättern, die gegart, gedünstet oder geschmort werden.", imagenPlatillo: UIImage(named: "Kohlrouladen")!, imagenDetallePlatillo: UIImage(named: "Kohlrouladen")!, comentariosPlatillo: [Comentario(nombreComentario: "Merkel", textoComentario: "Ich liebe er"), Comentario(nombreComentario: "Merkel", textoComentario: "Ich liebe er")]),
        Platillo(nombrePlatillo: "Rote Grutze", descripcionPlatillo: "Rote Grütze ist eine Süßspeise der deutschen Küche sowie der Landesküchen Skandinaviens. Die Bezeichnung leitet sich von der typischen Rotfärbung durch die verwendeten Früchte ab. „Grütze“ bezieht sich auf die Verwendung von zerkleinerten stärkehaltigen Zutaten, die ihre typische Konsistenz begründen. Bei anderen Früchten wird der Name entsprechend auf gelbe Grütze oder grüne Grütze abgewandelt.", imagenPlatillo: UIImage(named: "Rote-Grutze")!, imagenDetallePlatillo: UIImage(named: "Rote-Grutze")!, comentariosPlatillo: [Comentario(nombreComentario: "Hitler", textoComentario: "SIEG HEIL"), Comentario(nombreComentario: "Merkel", textoComentario: "Ich liebe er")]),
        Platillo(nombrePlatillo: "Wiener Schnitzel", descripcionPlatillo: "Wiener Schnitzel ist ein dünnes, paniertes und ausgebackenes Schnitzel aus Kalbfleisch. Es gehört zu den bekanntesten Spezialitäten der Wiener Küche.", imagenPlatillo: UIImage(named: "Wienerschnitzel")!, imagenDetallePlatillo: UIImage(named: "Wienerschnitzel")!, comentariosPlatillo: [Comentario(nombreComentario: "Hitler", textoComentario: "SIEG HEIL"), Comentario(nombreComentario: "Merkel", textoComentario: "Ich liebe er")])
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Platillos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellPlatillo") as! CeldaPlatillo
        celda.lblPlatillo.text = Platillos[indexPath.row].nombrePlatillo
        celda.imgPlatilloCell.image = Platillos[indexPath.row].imagenPlatillo
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Geschirr"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetallePlatillo" {
            let destino = segue.destination as? PlatilloDetalleController
            
            destino?.platillo = Platillos[(tbPlatillos.indexPathForSelectedRow?.row)!]
            
        }
    }
}

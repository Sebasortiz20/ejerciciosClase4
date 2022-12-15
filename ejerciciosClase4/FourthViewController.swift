//
//  FourthViewController.swift
//  ejerciciosClase4
//
//  Created by sebas  on 2/12/22.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var animalsTextField: UITextField!
    @IBOutlet weak var animalsImage: UIImageView!
    @IBOutlet weak var searchAnimalOutlet: UIButton!
    
    let imagenNoEncontrada = UIImage(named: "imageNoEncontrado")!
    
    var nombreAnimal: String?
    var imagenAnimal: UIImage?
    
    @IBAction func searchAnimalAction(_ sender: UIButton) {
        extraerDatos()
        buscarImagenAnimal()
        pintarImagenAnimal()
    }
    
    func extraerDatos() {
        nombreAnimal = animalsTextField.text ?? ""
    }
    
    func buscarImagenAnimal() {
        imagenAnimal = UIImage(named: nombreAnimal!) ?? imagenNoEncontrada
    }
    
    func pintarImagenAnimal() {
        animalsImage.image = imagenAnimal
    }
}

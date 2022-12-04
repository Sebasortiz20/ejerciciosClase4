//
//  SecondViewController.swift
//  ejerciciosClase4
//
//  Created by sebas  on 26/11/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UITextField!
    @IBOutlet weak var labelResultado: UILabel!
    
    lazy var convertir = Double(textLabel.text ?? "")
    
    @IBAction func convertirCelciusAFahrenheit(_ sender: UIButton) {
        dataConverting()
        presentConverting()
    }
    
    func dataConverting () {
        convertir = (convertir! * 9 ) / 5 + 32
    }
    
    func presentConverting () {
        labelResultado.text = "\(convertir!)"
    }
}

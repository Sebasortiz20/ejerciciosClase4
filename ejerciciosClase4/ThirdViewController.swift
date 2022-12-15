//
//  ThirdViewController.swift
//  ejerciciosClase4
//
//  Created by sebas  on 28/11/22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var textFieldCelciusAFahrenheit: UITextField!
    @IBOutlet weak var textFieldFahrenheitACelcius: UITextField!
    @IBOutlet weak var labelResultFahrenheit: UILabel!
    @IBOutlet weak var labelResultCelcius: UILabel!
    
    struct Constant{
        static let enterValueToCalculate = "ingrese valor"
        static let characterDegreesFahrenheit = "\u{2109}"
        static let characterDegreesCelsius = "\u{2103}"
    }
    
    var resultadoFahrenheit: String?
    var resultadoCelcius: String?
    
    @IBAction func convetirAFahrenheitAction(_ sender: UIButton) {
        convertCelsiusToFahrenheit()
        pintarResultadosFahrenheit()
    }
    
    @IBAction func convertirACelciusAction(_ sender: UIButton) {
        convertFahrenheitToCelsius()
        pintarResultadosCelcius()
    }
    
    func pintarResultadosFahrenheit() {
        labelResultFahrenheit.text = resultadoFahrenheit
    }
    
    func pintarResultadosCelcius() {
        labelResultCelcius.text = resultadoCelcius
    }
    
    func convertCelsiusToFahrenheit() {
        if let celciusTemperature = Double(textFieldCelciusAFahrenheit.text!){
            resultadoFahrenheit = "\((celciusTemperature * 9) / 5 + 32) \(Constant.characterDegreesFahrenheit)"
        } else {
            resultadoFahrenheit = Constant.enterValueToCalculate
        }
    }
    
    func convertFahrenheitToCelsius() {
        if let fahrenheitTemperature = Double(textFieldFahrenheitACelcius.text!){
            resultadoCelcius = "\((fahrenheitTemperature - 32 ) * 5 / 9) \(Constant.characterDegreesCelsius)"
        } else {
            resultadoCelcius = Constant.enterValueToCalculate
        }
    }
}

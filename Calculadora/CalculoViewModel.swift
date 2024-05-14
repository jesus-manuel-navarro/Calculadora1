//
//  CalculoViewModel.swift
//  Calculadora
//
//  Created by Jesus on 14/5/24.
//

import Foundation
import SwiftUI

class Calculos : ObservableObject {
    @Published var operador : String = ""
    @Published var operador1 : Float = 0
    @Published var operador2 : Float = 0
    @Published var resultado : Float = 0
    func sumar(){
        
    }
}


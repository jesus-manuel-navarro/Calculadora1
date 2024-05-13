//
//  ContentView.swift
//  Calculadora
//
//  Created by Jesus on 6/5/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var inputText : String = " "
    
    var body: some View {
        
        VStack {
            TextField("0", text: $inputText)
                .keyboardType(.numberPad)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.trailing) // Alineación desde la derecha
            ExtractedView(inputText: $inputText)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
         ContentView()
    }
}

struct ExtractedView: View {
    
    @Binding var inputText : String
    
    var body: some View {
        VStack{
           
            HStack{
                Button(action: {
                    inputText = inputText + "1"
                }, label: {
                    
                    Text("1")
                }
                )
                .buttonStyle(BlueButton())// fin de boton// fin de boton
                Button(action: {
                    inputText = inputText + "2"
                }, label: {
                    Text("2")
                }
                )
                .buttonStyle(BlueButton())// fin de boton// fin de boton
                Button(action: {
                    print("3")
                }, label: {
                    Text("3")
                }
                )
                .buttonStyle(BlueButton())// fin de boton/ fin de boton
            }
            HStack{
                Button(action: {
                    print("4")
                }, label: {
                    Text("4")
                }
                )
                .buttonStyle(BlueButton())// fin de boton/ fin de boton
                Button(action: {
                    print("5")
                }, label: {
                    Text("5")
                }
                )
                .buttonStyle(BlueButton())// fin de boton/ fin de boton
                Button(action: {
                    print("7")
                }, label: {
                    Text("7")
                }
                )
                .buttonStyle(BlueButton())// fin de boton fin de boton
            }
            HStack{
                Button(action: {
                    print("8")
                }, label: {
                    Text("8")
                }
                )
                .buttonStyle(BlueButton())// fin de boton/ fin de boton
                Button(action: {
                    print("9")
                }, label: {
                    Text("9")
                }
                )
                .buttonStyle(BlueButton())// fin de boton/ fin de boton
                Button(action: {
                    print("0")
                }, label: {
                    Text("0")
                }
                )
                .buttonStyle(BlueButton())// fin de boton
            }
        }
    }
}

 struct BlueButton: ButtonStyle {
     func makeBody(configuration: Configuration) -> some View {
         configuration.label
             .padding()
             .background(Color(red: 0, green: 0, blue: 0.5))
             .foregroundStyle(.white)
             .clipShape(Capsule())
     }
 }
/*
 struct ContentView: View {
     var body: some View {
         Button("Press Me") {
             print("Button pressed!")
         }
         .buttonStyle(BlueButton())
     }
 } */

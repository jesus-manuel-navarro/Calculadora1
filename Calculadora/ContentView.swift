//
//  ContentView.swift
//  Calculadora
//
//  Created by Jesus on 6/5/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var inputText : String = "0"
    @State var isEditable : Bool = false
    var body: some View {
        
        VStack {
            TextField("0", text: $inputText)
                .keyboardType(.numberPad)
                .disabled(!isEditable)
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
                    if (inputText == "0"){inputText = "1"}
                        else
                    {inputText = inputText + "1"}
                }, label: {
                    
                    Text("1")
                }
                )
                .buttonStyle(BlueButton())// fin de boton// fin de boton
                Button(action: {
                    if (inputText == "0"){inputText = "2"}
                        else
                    {inputText = inputText + "2"}
                }, label: {
                    Text("2")
                }
                )
                .buttonStyle(BlueButton())// fin de boton// fin de boton
                Button(action: {
                    if (inputText == "0"){inputText = "3"}
                        else
                    {inputText = inputText + "3"}
                }, label: {
                    Text("3")
                }
                )
                .buttonStyle(BlueButton())// fin de boton/ fin de boton
                Button(action: {
                    
                }, label: {
                    Text("/")
                }
                )
                .buttonStyle(BlueButton())// fin de boton
            }
            HStack{
                Button(action: {
                    if (inputText == "0"){inputText = "4"}
                        else
                    {inputText = inputText + "4"}
                }, label: {
                    Text("4")
                }
                )
                .buttonStyle(BlueButton())// fin de boton/ fin de boton
                Button(action: {
                    if (inputText == "0"){inputText = "5"}
                        else
                    {inputText = inputText + "5"}
                }, label: {
                    Text("5")
                }
                )
                .buttonStyle(BlueButton())// fin de boton/ fin de boton
                Button(action: {
                    if (inputText == "0"){inputText = "6"}
                        else
                    {inputText = inputText + "6"}
                }, label: {
                    Text("6")
                }
                )
                .buttonStyle(BlueButton())// fin de boton fin de boton
                Button(action: {
                    
                }, label: {
                    Text("-")
                }
                )
                .buttonStyle(BlueButton())// fin de boton
            }
            HStack{
                Button(action: {
                    if (inputText == "0"){inputText = "7"}
                        else
                    {inputText = inputText + "7"}
                }, label: {
                    Text("7")
                }
                )
                .buttonStyle(BlueButton())// fin de boton/ fin de boton
                Button(action: {
                    if (inputText == "0"){inputText = "8"}
                        else
                    {inputText = inputText + "8"}
                }, label: {
                    Text("8")
                }
                )
                .buttonStyle(BlueButton())// fin de boton/ fin de boton
                Button(action: {
                    if (inputText == "0"){inputText = "9"}
                        else
                    {inputText = inputText + "9"}
                }, label: {
                    Text("9")
                }
                )
                .buttonStyle(BlueButton())// fin de boton
                Button(action: {
                    
                }, label: {
                    Text("+")
                }
                )
                .buttonStyle(BlueButton())// fin de boton
            }
            HStack{
                Button(action: {
                    
                }, label: {
                    Text("*")
                }
                )
                .buttonStyle(BlueButton())// fin de boton/ fin de boton
                Button(action: {
                    if (inputText == "0"){inputText = "0"}
                        else
                    {inputText = inputText + "0"}
                }, label: {
                    Text("0")
                }
                )
                .buttonStyle(BlueButton())// fin de boton/ fin de boton
                Button(action: {
                    inputText = "0"
                }, label: {
                    Text("C")
                }
                )
                .buttonStyle(BlueButton())// fin de boton
                Button(action: {
                    
                }, label: {
                    Text("=")
                }
                )
                .buttonStyle(BlueButton())// fin de boton            }
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

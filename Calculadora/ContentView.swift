//
//  ContentView.swift
//  Calculadora
//
//  Created by Jesus on 6/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ExtractedView()
        }
    }}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    print("1")
                }, label: {
                    Text("1")
                }
                )  // fin de boton
                Button(action: {
                    print("2")
                }, label: {
                    Text("2")
                }
                )  // fin de boton
                Button(action: {
                    print("3")
                }, label: {
                    Text("3")
                }
                )  // fin de boton
            }
            HStack{
                Button(action: {
                    print("4")
                }, label: {
                    Text("4")
                }
                )  // fin de boton
                Button(action: {
                    print("5")
                }, label: {
                    Text("5")
                }
                )  // fin de boton
                Button(action: {
                    print("7")
                }, label: {
                    Text("7")
                }
                )  // fin de boton
            }
            HStack{
                Button(action: {
                    print("8")
                }, label: {
                    Text("8")
                }
                )  // fin de boton
                Button(action: {
                    print("9")
                }, label: {
                    Text("9")
                }
                )  // fin de boton
                Button(action: {
                    print("0")
                }, label: {
                    Text("0")
                }
                )  // fin de boton
            }
        }
    }
}

//
//  File.swift
//  WWDCExample
//
//  Created by Tafani Rabbani on 06/04/22.
//

import SwiftUI
import Combine

struct ClassANC2 : View{
    
    
    @State var seratus = 0
    @State var limapuluh = 0
    @State var duapuluh = 0
    @State var sepuluh = 0

    @State var uang = ""
    
    var body: some View {
        
        VStack {
            HStack {
                TextField("Uang pak Suip", text: $uang)
                    .keyboardType(.numberPad)
                    .onReceive(Just(uang)) { newValue in
                        let filtered = newValue.filter { "0123456789".contains($0) }
                        if filtered != newValue {
                            
                            self.uang = filtered
                        }
                    }
                Button("Hitung"){
                    pecahUang()
                }
            }.padding(.horizontal)
            
            List{
                Section(header: Text("Seratus Dollar")) {
                    Text("\(seratus) lembar")
                }
                
                Section(header: Text("Lima Puluh Dollar")) {
                    Text("\(limapuluh) lembar")
                }
                
                Section(header: Text("Dua Puluh Dollar")) {
                    Text("\(duapuluh) lembar")
                }
                Section(header: Text("Sepuluh Dollar")) {
                    Text("\(sepuluh) lembar")
                }
                Section(header: Text("Total Lembar")) {
                    Text("\(seratus+limapuluh+duapuluh+sepuluh) lembar ")
                }
                
            }.navigationBarTitleDisplayMode(.inline)
            
        }
    }
    
    
    func pecahUang(){
        // Code disini
    }
}

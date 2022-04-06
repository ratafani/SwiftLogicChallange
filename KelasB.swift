//
//  File.swift
//  WWDCExample
//
//  Created by Tafani Rabbani on 06/04/22.
//

import SwiftUI
import Combine


struct ClassBNC2 : View{
    
    @State var lembarUang = [Int:Int]()
    
    @State var uang = ""
    @State var total = 0
    
    
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
                }.padding(.horizontal).padding(.top)
                
                
                
                List{
                    
                    ForEach(lembarUang.sorted(by: >), id: \.key) { key, value in
                        Section(header: Text("Uang \(key) Lembar")) {
                            Text("\(value)")
                        }
                    }
                    Section(header: Text("Total Lembar")) {
                        Text("\(total)")
                    }
                }.navigationBarTitleDisplayMode(.inline)
                
            }
        
        
        
    }
    
    
    func pecahUang(){
        // Code disini
    }
}

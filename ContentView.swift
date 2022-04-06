import SwiftUI
import Combine

struct ContentView: View {
    
    
    @State var seratus = 0
    @State var limapuluh = 0
    @State var duapuluh = 0
    @State var sepuluh = 0

    @State var uang = ""
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ClassANC2()) {
                    Text("Logic Klass A")
                }
                
                NavigationLink(destination: ClassBNC2()) {
                    Text("Logic Klass B")
                }
            }
            .navigationBarHidden(true)
        }
        
        
    }
    
    
    func pecahUang(){
        var tempUang = Int(uang) ?? 0
        seratus = tempUang / 100
        if (tempUang % 100) == 0{
            seratus-=1
            tempUang = tempUang - ((seratus) * 100)
        }else{
            tempUang = tempUang % 100
        }
        
        print(tempUang)
        
        limapuluh = tempUang / 50
        if (tempUang % 50) == 0{
            limapuluh-=1
            tempUang = tempUang - ((limapuluh) * 50)
        }else{
            tempUang = tempUang % 50
        }
        
        print(tempUang)
        duapuluh = tempUang / 20
        if (tempUang % 20) == 0{
            duapuluh-=1
            tempUang = tempUang - ((duapuluh) * 20)
            
        }else{
            tempUang = tempUang % 20
        }
        
        print(tempUang)
        sepuluh = tempUang / 10
        tempUang = tempUang % 10
        
        
        print(tempUang)
    }
}

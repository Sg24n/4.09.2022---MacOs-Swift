//
//  ContentView.swift
//  Try_In_macOs_4.09.2022
//
//  Created by Kira Vaskovskiy on 4.09.
//

import SwiftUI


struct ContentView: View {
    @State private var showNewView = false
    
    var body: some View {
        VStack{
            Button("Туда"){
            showNewView.toggle()
            }.padding(50.0)
                .sheet(isPresented: $showNewView){
                    View2()
                }
        }.padding(100)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct View2:View{
    @Environment(\.presentationMode) var presentationMode

    var body: some View{
        VStack{
        Button("Обратно"){
            self.presentationMode.wrappedValue.dismiss()
        }.padding(50)
    }.padding(80)
}
}


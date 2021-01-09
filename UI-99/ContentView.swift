//
//  ContentView.swift
//  UI-99
//
//  Created by にゃんにゃん丸 on 2021/01/09.
//

import SwiftUI


struct ContentView: View {
    @State var show = false
    var body: some View {
        ZStack{
            show ? Color.black.edgesIgnoringSafeArea(.all) : Color.white.edgesIgnoringSafeArea(.all)
            
            Home(show: $show)
                
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    @Binding var show : Bool
    var body: some View{
        
        ZStack{
            
            Capsule()
                .fill(Color("c1"))
                .foregroundColor(.gray)
                .frame(width: 130, height: 50)
                
            
            HStack{
                
                
                if show {
                    Spacer()
                    Text("Light")
                        .foregroundColor(show ? .red : .pink)
                    
                }
                ZStack{
                    
                    Capsule()
                        .fill(Color("c2"))
                        .foregroundColor(.gray)
                        .frame(width: 60, height: 50)
                        
                       
                    
                    Image(systemName: "moon.fill")
                        .resizable()
                        .foregroundColor(.yellow)
                        .frame(width: 25, height: 25)
                       
                    
                }
                .onTapGesture(perform: {
                    show.toggle()
                })
                if !show{
                    
                    
                    Text("Dark")
                    Spacer()
                    
                }
                
            }
            .frame(width: 140, height: 15)
            
            .animation(.spring())
        }
       
        
    }
}

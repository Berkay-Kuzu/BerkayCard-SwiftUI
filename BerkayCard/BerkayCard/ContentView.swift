//
//  ContentView.swift
//  BerkayCard
//
//  Created by Berkay Kuzu on 3.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Berkay")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                
                Text("Berkay Kuzu")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                    .bold()
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+90 1234 456 23 45", imageName: "phone.fill")
                InfoView(text: "berkay@gmail.com", imageName:"mail.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 11")
    }
}



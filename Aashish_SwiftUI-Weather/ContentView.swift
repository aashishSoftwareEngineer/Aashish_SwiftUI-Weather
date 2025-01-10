//
//  ContentView.swift
//  Aashish_SwiftUI-Weather
//
//  Created by Aashish Katiyar on 10/01/25.
//

import SwiftUI

struct ContentView: View {
    let array1 = [74, 55, 85, 90, 25]
    let array2 = ["cloud.sun.circle.fill", "sun.max", "cloud.sun.circle.fill", "cloud.sun.circle.fill", "sun.max.fill"]
    
    var body: some View {
        VStack {
            Text("New Delhi")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
            Image(systemName: "cloud.sun.circle.fill")
                .font(Font.system(size: 200))
                .foregroundStyle(Color.black)
            Spacer()
            HStack {
                ForEach(Array(array1.enumerated()), id: \.offset) { i in
                    VStack {
                        Text("TUE")
                        Image(systemName: array2[i.offset])
                            .foregroundStyle(Color.black)
                            .font(.title)
                        Text("25\u{00B0}")
                        Spacer()
                    }
                }
            }
            
            Button("Change Location") {
                
            }
            .foregroundStyle(Color.white)
            .frame(maxWidth: .infinity, maxHeight: 50)
            .font(.title)
            .background(Color.black)
            .cornerRadius(10)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

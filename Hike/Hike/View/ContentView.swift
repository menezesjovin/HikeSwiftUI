//
//  ContentView.swift
//  Hike
//
//  Created by Jovin Menezes on 28/04/20.
//  Copyright © 2020 Jovin Menezes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var hikes = Hike.getAllData()
    var body: some View {
        NavigationView{
        List(self.hikes, id: \.id){ hike in
            NavigationLink(destination: HikeView(hike: hike)){
            HikeCell(hike: hike)
            }
        }
        .navigationBarTitle("Contacts")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    let hike : Hike
    var body: some View {
        HStack{
            Image(hike.imageURL)
                .resizable()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
            VStack{
                Text(hike.name)
                Text("\(hike.miles)")
                
            }
        }
    }
}

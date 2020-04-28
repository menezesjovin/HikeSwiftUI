//
//  HikeView.swift
//  Hike
//
//  Created by Jovin Menezes on 28/04/20.
//  Copyright © 2020 Jovin Menezes. All rights reserved.
//

import SwiftUI

struct HikeView: View {
    var hike : Hike
    @State var miles = ""
    var body: some View {
        VStack{

            Image(hike.imageURL)
                .resizable()
            .clipShape(Circle())
                         .frame(width: 100, height: 100)

                Text(hike.name)
                Text(miles)

            Button(action: {
                self.miles = "\(self.hike.miles)"
            }) {
                Text("Click")
            }

        }
    }
}

struct HikeView_Previews: PreviewProvider {
    static var previews: some View {
        HikeView(hike: Hike(name: "jovin", imageURL: "a", miles: 13.3))
    }
}

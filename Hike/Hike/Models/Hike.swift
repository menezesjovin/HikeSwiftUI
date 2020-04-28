//
//  Hike.swift
//  Hike
//
//  Created by Jovin Menezes on 28/04/20.
//  Copyright © 2020 Jovin Menezes. All rights reserved.
//

import Foundation
struct Hike {
    let id = UUID()
    let name : String
    let imageURL : String
    let miles : Double
}
extension Hike{
    static func getAllData() -> [Hike]{
        return [Hike(name: "Jovin", imageURL: "a", miles: 10.9),Hike(name: "Jasmin", imageURL: "b", miles: 10.9),Hike(name: "Jackson", imageURL: "c", miles: 10.9)]
    }
}

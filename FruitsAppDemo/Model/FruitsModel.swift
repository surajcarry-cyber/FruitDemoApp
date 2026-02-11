//
//  FruitsModel.swift
//  FruitsAppDemo
//  Created by Suraj Parshad on 10/02/26.
//

import SwiftUI
struct FruitsModel: Identifiable{
    var id : UUID?
    var title : String
    var headline: String
    var image : Image
    var gradientColors : [Color]
    var nutrients : [String]
    var description: String
}

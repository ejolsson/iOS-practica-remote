//
//  Hero.swift
//  ios-practica
//
//  Created by Eric Olsson on 12/27/22.
//

import Foundation

struct Hero: Codable {
    let id: String
    let name: String
    let photo: String
    let description: String
    let favorite: Bool
}

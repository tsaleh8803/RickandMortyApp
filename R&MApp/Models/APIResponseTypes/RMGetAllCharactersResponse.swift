//
//  RMGetCharactersResponse.swift
//  R&MApp
//
//  Created by Mac on 12/07/2023.
//


import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
     
    let info: Info
    let results: [RMCharacter]
}

 

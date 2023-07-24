//
//  RMCharacterDetailViewViewModel.swift
//  R&MApp
//
//  Created by Mac on 24/07/2023.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}

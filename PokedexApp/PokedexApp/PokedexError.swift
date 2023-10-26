//
//  PokedexError.swift
//  PokedexApp
//
//  Created by Rahul Adepu on 10/26/23.
//

import Foundation

// Created custom errors
enum PokedexError: Error {
    case notGenThree
    case wrongPokemonName
    case invalidUser
    case unknown
}

// Created custom error description
extension PokedexError: LocalizedError {
    var errorDescription: String?{
        switch self{
        case .notGenThree:
            return NSLocalizedString("The Pokemon is not of generation three", comment: "notGenThree")
        case .wrongPokemonName:
            return NSLocalizedString("The name of the pokemon is wrong", comment: "wrongPokemonName")
        case .invalidUser:
            return NSLocalizedString("The user is invalid", comment: "invalidUser")
        case .unknown:
            return NSLocalizedString("Recieved an unkown error", comment: "unknown")
        }
    }
}

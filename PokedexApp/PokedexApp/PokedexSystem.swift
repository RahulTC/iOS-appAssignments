//
//  PokedexSystem.swift
//  PokedexApp
//
//  Created by Rahul Adepu on 10/26/23.
//

/**
 Dependency Injection
 1. Constructor Injection (Initialiser Injection) - In this type of injection we create a property of the dependency in the initialser of the class. If a class has many variables then adding a dependency injection in it is going to make the initialiser even lengthier.
 2. Property Injection - In this type of injection we create a property of the dependency from outside the class where we have created an object of the class. It is not optimal to use it because if the developer forgets to initialse the injection property then the whole app could fail and give you an error.
 3. Method Injection - In this type of injection we pass the dependency directly in the methods that needs the dependency injection as a parameter. Use a guard let to satisfy the optinal value of the dependency. If there are more than one methods that need dependency injection then it would be a repeatative job to declare the dependency object in each method.
 */


import Foundation

protocol PokemonGenerations{
    var pokemonName: String { get set }
    var pokemonNPN: Int { get set }
    func getGenThreePokemon(authManager: AuthenticationManager?) throws -> String
}

class PokedexSystem: PokemonGenerations{
    var pokemonName: String
    var pokemonNPN: Int
//    var authManager: AuthenticationManager? // 2. Property Injection
    
    // 1. Constructor Injection
    
    /*
    init(pokemonName: String, pokemonNPN: Int, authManager: AuthenticationManager) {
        self.pokemonName = pokemonName
        self.pokemonNPN = pokemonNPN
        self.authManager = authManager
    }
    */
    
    init(pokemonName: String, pokemonNPN: Int) {
        self.pokemonName = pokemonName
        self.pokemonNPN = pokemonNPN
    }
    
    
    func getGenThreePokemon(authManager: AuthenticationManager?) throws -> String {
        guard let authManager = authManager else{
            throw PokedexError.unknown
        }
        
        if authManager.validateUser(){
            if pokemonNPN < 387 {
                throw PokedexError.notGenThree
            }else if pokemonNPN > 493 {
                throw PokedexError.notGenThree
            }
            return self.pokemonName
        }else{
            throw PokedexError.invalidUser
        }
    }
    
}

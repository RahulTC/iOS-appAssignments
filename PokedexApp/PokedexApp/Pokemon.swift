//
//  Pokemon.swift
//  PokedexApp
//
//  Created by Rahul Adepu on 10/26/23.
//

import UIKit

class Pokemon{
    private let pokemonName: String
    private let pokemonNPN: Int
    
    init(pokemonName: String, pokemonNPN: Int) {
        self.pokemonName = pokemonName
        self.pokemonNPN = pokemonNPN
    }
    
    func getPokemonName() -> String{
        return self.pokemonName
    }
    
    func getPokemoNPN() -> Int{
        return self.pokemonNPN
    }
}

let pokemons = [Pokemon(pokemonName: "Pikachu", pokemonNPN: 25),
                Pokemon(pokemonName: "Charizard", pokemonNPN: 6),
                Pokemon(pokemonName: "Greninja", pokemonNPN: 658),
                Pokemon(pokemonName: "Sceptile", pokemonNPN: 254),
                Pokemon(pokemonName: "Lucario", pokemonNPN: 448),
                Pokemon(pokemonName: "Infernape", pokemonNPN: 392)]

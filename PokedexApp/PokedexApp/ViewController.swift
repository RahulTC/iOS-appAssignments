//
//  ViewController.swift
//  PokedexApp
//
//  Created by Rahul Adepu on 10/26/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        var poke = Pokemon(pokemonName: "Pikachu", pokemonNPN: 25)
//        let ans = poke.getPokemonName()
        
        let pokedex = PokedexSystem(pokemonName: "Pikachu", pokemonNPN: 25)
        
        // 2. Property Injection
        /*
        pokedex.authManager = AuthenticationManager()
        */
        
        do{
            // 3. Method Injection
            let pokemonName = try pokedex.getGenThreePokemon(authManager: AuthenticationManager())
            print("Pokemon Name -> \(pokemonName)")
        }catch{
            print(error.localizedDescription)
        }
    }


}


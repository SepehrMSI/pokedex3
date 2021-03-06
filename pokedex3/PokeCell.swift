//
//  PokeCell.swift
//  pokedex3
//
//  Created by Sepehr's Cool Macbook on 7/19/17.
//  Copyright © 2017 Sepehr's Cool Macbook. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 8.0
    }
    
 

    func configureCell(_ pokemon: Pokemon){
        self.pokemon = pokemon
        
        nameLbl.text = self.pokemon.name.capitalized
        thumbImg.image = UIImage(named:"\(self.pokemon.pokedexId)")

    }
    
}

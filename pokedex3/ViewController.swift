//
//  ViewController.swift
//  pokedex3
//
//  Created by Sepehr's Cool Macbook on 7/19/17.
//  Copyright © 2017 Sepehr's Cool Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collection.dataSource = self
        collection.delegate = self
        
    }

  
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {   // This is for recyceling the old cells therfore the app won't crash.
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokeCell", for: indexPath) as? PokeCell {
            
            let pokemon = Pokemon(name: "Pokemon", pokedexId: indexPath.row + 1)
           
            cell.configureCell(pokemon)
            
            return cell
            
        } else {
        
           return UICollectionViewCell ()  // Else return an emty cell (That probably won't happen)
       
        }

        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 718
       
      // number of item in section
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
      
        // number of section in collection view
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       
        return CGSize(width: 105, height: 105)
        
        // This function is for the layout and we put the height and width we put on StoryBoard which were 105, 105
    }
   
    
    
    
    
}


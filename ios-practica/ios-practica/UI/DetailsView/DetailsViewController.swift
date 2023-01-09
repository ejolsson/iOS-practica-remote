//
//  DetailsViewController.swift
//  ios-practica
//
//  Created by Eric Olsson on 1/9/23.
//

import UIKit

class DetailsViewController: UIViewController {

    
    @IBOutlet weak var heroImageView: UIImageView!
    @IBOutlet weak var heroTitleLabel: UILabel!
    @IBOutlet weak var heroDescLabel: UILabel!
    @IBOutlet weak var transformationButton: UIButton!
    
    @IBAction func transformationsButtonTapped(_ sender: Any) {
        // TODO: - Code transformation button -
    }
    
    var hero: Hero!
    var transformations: [Transformation] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = hero.name
        heroImageView.setImage(url: hero.photo)
        heroTitleLabel.text = hero.name
        heroDescLabel.text = hero.description
        
        let token = LocalDataLayer.shared.getToken()
        
        // NetworkLayer.shared.fetch
        }

}

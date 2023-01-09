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
    }
    
    var hero: Hero!
    var transformations: [Transformation] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        }

}

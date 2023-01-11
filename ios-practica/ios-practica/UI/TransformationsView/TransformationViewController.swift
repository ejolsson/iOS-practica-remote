//
//  TransformationViewController.swift
//  ios-practica
//
//  Created by Eric Olsson on 1/11/23.
//

import UIKit

class TransformationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var transformations: [Transformation]!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transformations.count
    } // complete
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customTableCell", for: indexPath) as! TableViewCell
        
        let hero = transformations[indexPath.row]
        
        cell.iconImageView.setImage(url: hero.photo)
        cell.titleLabel.text = hero.name
        cell.descriptionLabel.text = hero.description
        cell.accessoryType = .disclosureIndicator
        cell.selectionStyle = .none
        
        return cell
    } // complete
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    } // complete
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        navigationItem.title = "Transformations"
        
        let xib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: "customTableCell") // try TableViewCell if no dice, previous = customTableCell
    } // complete
    
}

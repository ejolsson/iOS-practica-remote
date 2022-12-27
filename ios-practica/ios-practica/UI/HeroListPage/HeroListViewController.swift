//
//  HeroListViewController.swift
//  ios-practica
//
//  Created by Eric Olsson on 12/27/22.
//

import UIKit

struct HeroCellItem {
    let image: UIImage
    let text: String
}

class HeroListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var heros: [Hero] = []
    
    // hardcode data for UI dev purposes, REMOVE LATER
    let testRows = [
        HeroCellItem(image: UIImage(systemName: "pencil.circle")!, text: "Gokul"),
        HeroCellItem(image: UIImage(systemName: "trash.circle")!, text: "Mokul"),
        HeroCellItem(image: UIImage(systemName: "doc.circle")!, text: "Tokul"),
        HeroCellItem(image: UIImage(systemName: "paperplane.circle")!, text: "Sokul")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        let xib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: "customTableCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testRows.count // count test data above and make that many rows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customTableCell", for: indexPath) as! TableViewCell
        let customItem = testRows[indexPath.row] // TODO: change customItem name in this line
        cell.iconImageView.image = customItem.image
        cell.titleLabel.text = customItem.text
        
        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

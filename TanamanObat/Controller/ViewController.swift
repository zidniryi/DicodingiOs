//
//  ViewController.swift
//  TanamanObat
//
//  Created by mac on 30/04/20.
//  Copyright © 2020 zidniryi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var plantTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

               plantTableView.dataSource = self
               
               plantTableView.register(UINib(nibName: "PlantTableViewCell", bundle: nil), forCellReuseIdentifier: "PlantCell")
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return plant.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "PlantCell", for: indexPath) as! PlantTableViewCell
           
      
        let tanaman = plant[indexPath.row]
        cell.labelName.text = tanaman.name
        cell.labelDescription.text = tanaman.description
        cell.imagePlant.image = tanaman.image
        return cell
    }
    
    
}

//
//  FilterViewController.swift
//  nossoApp
//
//  Created by Maíra  on 09/11/17.
//  Copyright © 2017 Maíra . All rights reserved.
//

import UIKit

class FilterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var dataArray = [DataModelFilter]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        dataArray.append(DataModelFilter(restrictionName: "Gluten Free"))
        dataArray.append(DataModelFilter(restrictionName: "Lactose Free"))
        
        self.tableView.reloadData()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "myRestrictionCell", for: indexPath) as! DataCellFilter
            cell.data = dataArray[indexPath.row]
        

        
            return cell
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func returnToRecipes(_ sender: UIBarButtonItem) {
        
        let presentingViewController: UIViewController! = self.presentingViewController
        
        self.dismiss(animated: false) {
            presentingViewController.dismiss(animated: false, completion: nil)
            
    }

}
    
    var indexes: [IndexPath] = []
    
    @IBAction func backToRecipes(_ sender: UIButton) {
        // Salvar
        
        if let indexes = tableView.indexPathsForSelectedRows {
            self.indexes = indexes
        }
        
        
        
        self.performSegue(withIdentifier: "backToRecipes", sender: self)
    }

    
}

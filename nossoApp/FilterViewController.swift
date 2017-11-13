//
//  FilterViewController.swift
//  nossoApp
//
//  Created by Maíra  on 09/11/17.
//  Copyright © 2017 Maíra . All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
}

//
//  DetailViewController.swift
//  nossoApp
//
//  Created by Louise Karkow Gaiatto Leal on 16/11/17.
//  Copyright © 2017 Maíra . All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
   
    // MARK: - Properties
    var recipeDetail: StructRecipe!
    
    
    // MARK: - Outlets
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var titleRecipe: UILabel!
    @IBOutlet weak var titleDescription: UILabel!
    @IBOutlet weak var descriptionRecipe: UILabel!
    @IBOutlet weak var titleIngredients: UILabel!
    @IBOutlet weak var ingredients: UILabel!
    @IBOutlet weak var steps: UILabel!
    
    // MARK: - Functions
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.recipeImage.image = recipeDetail.image
        self.titleRecipe.text = recipeDetail.titleRecipe
        self.titleDescription.text = recipeDetail.descriptionTitle
        self.descriptionRecipe.text = recipeDetail.descriptionRecipe
        self.titleIngredients.text = recipeDetail.ingredientsTitle
        self.ingredients.text = recipeDetail.ingredients
        self.steps.text = recipeDetail.steps
        
    }

}

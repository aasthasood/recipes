//
//  RecipesVC.swift
//  recipes
//
//  Created by Aastha Sood on 02/05/2023.
//

import UIKit

class RecipesVC: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Class Properties
    var meals = [Meal]()
    let viewModel = RecipesViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
}

// MARK: - Class Methods
extension RecipesVC {
    fileprivate func initialSetup() {
        fetchMeals()
    }
    
    fileprivate func fetchMeals() {
        Task {
            do {
                self.meals = try await viewModel.fetchMeals()
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch {
                Services.showErrorAlert(with: error.localizedDescription)
            }
        }
    }
}

// MARK: -------> UITableViewDataSource & UITableViewDelegate <---------
extension RecipesVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 115
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as! RecipeCell
        cell.updateCell(with: meals[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc = storyboard.instantiateViewController(withIdentifier: "RecipeDetailVC") as! RecipeDetailVC
        vc.mealId = self.meals[indexPath.row].id
        self.navigationController?.pushViewController(vc, animated: true)
    }
}



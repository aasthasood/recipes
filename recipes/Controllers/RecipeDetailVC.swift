//
//  RecipeDetailVC.swift
//  recipes
//
//  Created by Aastha Sood on 03/05/2023.
//

import UIKit

class RecipeDetailVC: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var instructionLabel: UILabel!

    // MARK: - Class Properties
    var mealId: String = ""
    var mealDetail: MealDetail?
    let viewModel = MealDetailViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.autoGrowTableViewHeader()
    }
}

// MARK: - Class Methods
extension RecipeDetailVC {
    fileprivate func initialSetup() {
        DispatchQueue.main.async {
            self.fetchMeals()
        }
    }
    
    fileprivate func fetchMeals() {
        Task {
            do {
                self.mealDetail = try await viewModel.fetchMealDetail(of: mealId)
                DispatchQueue.main.async {
                    self.title = self.mealDetail?.name ?? ""
                    self.instructionLabel.text = self.mealDetail?.instructions ?? ""
                    self.tableView.reloadData()
                }
            } catch {
                Services.showErrorAlert(with: error.localizedDescription)
            }
        }
    }
}


// MARK: -------> UITableViewDataSource & UITableViewDelegate <---------
extension RecipeDetailVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mealDetail?.ingredients.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IngradientCell", for: indexPath) as! IngradientCell
        cell.updateCell(with: mealDetail!.ingredients[indexPath.row])
        return cell
    }
}


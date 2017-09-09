//
//  ChoosePlayerViewController.swift
//  Roshambo
//
//  Created by Leonardo Vinicius Kaminski Ferreira on 09/09/17.
//  Copyright © 2017 Leonardo Ferreira. All rights reserved.
//

import UIKit

class ChoosePlayerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultViewControllerSegue" {
            if let resultVC = segue.destination as? BattleResultViewController {
                _ = configureNextVC(with: .paper, viewController: resultVC)
            }
        } else {
            if let resultVC = segue.destination as? BattleResultViewController {
                _ = configureNextVC(with: .scissor, viewController: resultVC)
            }
        }
    }

    // MARK: - Actions
    
    @IBAction func rockButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let resultVC = storyboard.instantiateViewController(withIdentifier: "BattleResultViewController") as? BattleResultViewController {
            let controller = configureNextVC(with: .rock, viewController: resultVC)
            
            present(controller, animated: true, completion: nil)
        }
    }
    
    @IBAction func paperButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "resultViewControllerSegue", sender: nil)
    }
    

}

// MARK: - ViewController

extension ChoosePlayerViewController {
    func configureNextVC(with player: PlayerType, viewController: BattleResultViewController) -> BattleResultViewController {
        let tupple = Roshambo.winnerMessage(with: Roshambo.generateRandomPlayer(), playerB: player)
        
        viewController.winnerMessage = tupple.0
        viewController.winnerImageName = tupple.1
        
        return viewController
    }
}

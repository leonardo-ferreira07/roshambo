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
    

    // MARK: - Actions
    
    @IBAction func rockButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let resultVC = storyboard.instantiateViewController(withIdentifier: "BattleResultViewController") as? BattleResultViewController {
            let tupple = Roshambo.winnerMessage(with: Roshambo.generateRandomPlayer(), playerB: .rock)
            
            resultVC.winnerMessage = tupple.0
            resultVC.winnerImageName = tupple.1
        
            present(resultVC, animated: true, completion: nil)
        }
    }
    
    @IBAction func paperButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "resultViewControllerSegue", sender: nil)
    }
    

}

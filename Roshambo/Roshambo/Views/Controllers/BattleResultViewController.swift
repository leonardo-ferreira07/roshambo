//
//  BattleResultViewController.swift
//  Roshambo
//
//  Created by Leonardo Vinicius Kaminski Ferreira on 09/09/17.
//  Copyright © 2017 Leonardo Ferreira. All rights reserved.
//

import UIKit

class BattleResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Actions
    
    @IBAction func playAgainPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}

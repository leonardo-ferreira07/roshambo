//
//  BattleResultViewController.swift
//  Roshambo
//
//  Created by Leonardo Vinicius Kaminski Ferreira on 09/09/17.
//  Copyright © 2017 Leonardo Ferreira. All rights reserved.
//

import UIKit

class BattleResultViewController: UIViewController {
    
    @IBOutlet weak var winnerImage: UIImageView!
    @IBOutlet weak var winnerLabel: UILabel!
    
    var winnerMessage: String!
    var winnerImageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        winnerLabel.text = winnerMessage
        winnerImage.image = UIImage(named: winnerImageName)
    }
    

    // MARK: - Actions
    
    @IBAction func playAgainPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}

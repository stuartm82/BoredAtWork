//
//  ResultsViewController.swift
//  BoredAtWork
//
//  Created by Viktoria Jensdottir on 18/10/2020.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var progressValue: String?
    var messageValue: String?

    @IBOutlet weak var progressLabel: UILabel!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressLabel.text = progressValue
        messageLabel.text = messageValue
       
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}

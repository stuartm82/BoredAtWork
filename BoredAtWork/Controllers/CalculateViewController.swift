//
//  ViewController.swift
//  BoredAtWork
//
//  Created by Viktoria Jensdottir on 11/10/2020.
//

import UIKit

class CalculateViewController: UIViewController {

    
    let date = Date()
    let calendar = Calendar.current
    var hour = 0
    var weekday = 0
    var progressValue = "0.0"
    var messageValue = "text"

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatePressed(_ sender: Any) {
        let hour = Double(calendar.component(.hour , from: date))
        let weekday = Double(calendar.component(.weekday, from: date))
        
        print (hour)
        print (weekday)
                
        let progress = getProgress()
        progressValue = String(format: "%.1f", progress)+"%"
        let message = getMessage()
        messageValue = message
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.progressValue = progressValue
            print(messageValue)
            destinationVC.messageValue = messageValue

    }
}


}

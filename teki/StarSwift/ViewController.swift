//
//  ViewController.swift
//  teki
//
//  Created by Théo on 30/06/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var celebreties = ["Yodda", "Dark Vador", "Luke", "Boba Fett", "Jaba"]
    
    var activities = ["Joue avec la Force", "Veux detruire la République", "Veux rejoindre la force", "Chercher un sabre", "Chercher Anakine"]
        @IBOutlet weak var quoteLabel: UILabel!
    
    @IBAction func changeQuote() {
        
        let randomIndex1 = Int(arc4random_uniform(UInt32(celebreties.count)))
        let celebrity = celebreties[randomIndex1]
        
        let randomIndex2 = Int(arc4random_uniform(UInt32(activities.count)))
        let activity = activities[randomIndex2]
        

        let quote = "Tu es " + celebrity + " " + "et tu " + activity + " !"
        quoteLabel.text = quote

    }
}

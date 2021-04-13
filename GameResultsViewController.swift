//
//  GameResultsViewController.swift
//  SpikeballApp
//
//  Created by Andrew Varghese on 8/15/20.
//  Copyright © 2020 Andrew Varghese. All rights reserved.
//

import UIKit

class GameResultsViewController: UIViewController {
    
    var team1s = 0
    
    var team2s = 0
    
    var p1n = ""
    
    var p2n = ""
    
    var p3n = ""
    
    var p4n = ""
    
    var p1s = 0
    
    var p1a = 0
    
    var p1as = 0
    
    var p1sa = 0
    
    var p1e = 0
    
    var p1f = 0
    
    var p2s = 0
    
    var p2a = 0
    
    var p2as = 0
    
    var p2sa = 0
    
    var p2e = 0
    
    var p2f = 0
    
    var p3s = 0
    
    var p3a = 0
    
    var p3as = 0
    
    var p3sa = 0
    
    var p3e = 0
    
    var p3f = 0
    
    var p4s = 0
    
    var p4a = 0
    
    var p4as = 0
    
    var p4sa = 0
    
    var p4e = 0
    
    var p4f = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Team1Score.text = String(team1s)
        Team2Score.text = String(team2s)
        p1Name.text = p1n
        p2Name.text = p2n
        p3Name.text = p3n
        p4Name.text = p4n
        p1Spike.text = String(p1s)
        p2Spike.text = String(p2s)
        p3Spike.text = String(p3s)
        p4Spike.text = String(p4s)
        p1Assist.text = String(p1as)
        p2Assist.text = String(p2as)
        p3Assist.text = String(p3as)
        p4Assist.text = String(p4as)
        p1Ace.text = String(p1a)
        p2Ace.text = String(p2a)
        p3Ace.text = String(p3a)
        p4Ace.text = String(p4a)
        p1Save.text = String(p1sa)
        p2Save.text = String(p2sa)
        p3Save.text = String(p3sa)
        p4Save.text = String(p4sa)
        p1Error.text = String(p1e)
        p2Error.text = String(p2e)
        p3Error.text = String(p3e)
        p4Error.text = String(p4e)
        p1Fault.text = String(p1f)
        p2Fault.text = String(p2f)
        p3Fault.text = String(p3f)
        p4Fault.text = String(p4f)
        
    
        
        if team2s > team1s {
            Winner.text = "Team 2 Wins!"
        }
        else if team1s == team2s {
            Winner.text = "Tie!"
        }

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var Team1Score: UILabel!
    
    @IBOutlet weak var Team2Score: UILabel!
    
    @IBOutlet weak var p1Name: UILabel!
    
    @IBOutlet weak var p2Name: UILabel!
    
    @IBOutlet weak var p3Name: UILabel!
    
    @IBOutlet weak var p4Name: UILabel!
    
    @IBOutlet weak var p1Spike: UILabel!
    
    @IBOutlet weak var p2Spike: UILabel!
    
    @IBOutlet weak var p3Spike: UILabel!
    
    @IBOutlet weak var p4Spike: UILabel!
    
    @IBOutlet weak var p1Ace: UILabel!
    
    @IBOutlet weak var p2Ace: UILabel!
    
    @IBOutlet weak var p3Ace: UILabel!
    
    @IBOutlet weak var p4Ace: UILabel!
    
    @IBOutlet weak var p1Assist: UILabel!
    
    @IBOutlet weak var p2Assist: UILabel!
    
    @IBOutlet weak var p3Assist: UILabel!
    
    @IBOutlet weak var p4Assist: UILabel!
    
    @IBOutlet weak var p1Save: UILabel!
    
    @IBOutlet weak var p2Save: UILabel!
    
    @IBOutlet weak var p3Save: UILabel!
    
    @IBOutlet weak var p4Save: UILabel!
    
    @IBOutlet weak var Winner: UILabel!
    
    @IBOutlet weak var p1Error: UILabel!
    
    @IBOutlet weak var p2Error: UILabel!
    
    @IBOutlet weak var p3Error: UILabel!
    
    @IBOutlet weak var p4Error: UILabel!
    
    @IBOutlet weak var p1Fault: UILabel!
    
    @IBOutlet weak var p2Fault: UILabel!
    
    @IBOutlet weak var p3Fault: UILabel!
    
    @IBOutlet weak var p4Fault: UILabel!
    
}


//
//  GameScreenViewController.swift
//  SpikeballApp
//
//  Created by Andrew Varghese on 8/15/20.
//  Copyright © 2020 Andrew Varghese. All rights reserved.
//

import UIKit

class GameScreenViewController: UIViewController {
    
    var label1name = ""
    
    var label2name = ""
    
    var label3name = ""
    
    var label4name = ""
    
    
    
    @IBOutlet var label1: UILabel!
    
    @IBOutlet var label2: UILabel!
    
    @IBOutlet var label3: UILabel!
    
    @IBOutlet var label4: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.text = label1name
        label2.text = label2name
        label3.text = label3name
        label4.text = label4name
        
        p1.name = label1name
        p2.name = label2name
        p3.name = label3name
        p4.name = label4name
        

        // Do any additional setup after loading the view.
    }
    
    
    class Player{
        
        var name = "No Name"
        var spikes = 0
        var aces = 0
        var assists = 0
        var saves = 0
        var faults = 0
        var errors = 0
        
    }
   
    @IBOutlet weak var team1: UILabel!
    
    @IBOutlet weak var team2: UILabel!
    
    
    var team1score = 0
    
    var team2score = 0
    
    let p1 = Player()
    
    let p2 = Player()
    
    let p3 = Player()
    
    let p4 = Player()
    
    @IBAction func p1Ace(_ sender: Any) {
        p1.aces += 1
        team1score += 1
        team1.text = String(team1score)
    }
    
    @IBAction func p2Ace(_ sender: Any) {
        p2.aces += 1
        team1score += 1
        team1.text = String(team1score)
    }
    
    @IBAction func p3Ace(_ sender: Any) {
        p3.aces += 1
        team2score += 1
        team2.text = String(team2score)
    }
    
    @IBAction func p4Ace(_ sender: Any) {
        p4.aces += 1
        team2score += 1
        team2.text = String(team2score)
    }
    
    @IBAction func p1fault(_ sender: Any) {
        p1.faults += 1
        team2score += 1
        team2.text = String(team2score)
    }
    
    @IBAction func p2fault(_ sender: Any) {
        p2.faults += 1
        team2score += 1
        team2.text = String(team2score)
    }
    
    @IBAction func p3fault(_ sender: Any) {
        p3.faults += 1
        team1score += 1
        team1.text = String(team1score)
    }
    
    @IBAction func p4fault(_ sender: Any) {
        p4.faults += 1
        team1score += 1
        team1.text = String(team1score)
    }
    
    @IBAction func p1SpikeA(_ sender: Any) {
        p1.spikes += 1
        p2.assists += 1
        team1score += 1
        team1.text = String(team1score)
    }
    
    @IBAction func p2SpikeA(_ sender: Any) {
        p2.spikes += 1
        p1.assists += 1
        team1score += 1
        team1.text = String(team1score)
    }
    
    @IBAction func p3SpikeA(_ sender: Any) {
        p3.spikes += 1
        p4.assists += 1
        team2score += 1
        team2.text = String(team2score)
    }
    
    @IBAction func p4SpikeA(_ sender: Any) {
        p4.spikes += 1
        p3.assists += 1
        team2score += 1
        team2.text = String(team2score)
    }
    
    @IBAction func p1Spike(_ sender: Any) {
        p1.spikes += 1
        team1score += 1
        team1.text = String(team1score)
    }
    
    @IBAction func p2Spike(_ sender: Any) {
        p2.spikes += 1
        team1score += 1
        team1.text = String(team1score)
    }
    
    @IBAction func p3Spike(_ sender: Any) {
        p3.spikes += 1
        team2score += 1
        team2.text = String(team2score)
    }
    
    @IBAction func p4Spike(_ sender: Any) {
        p4.spikes += 1
        team2score += 1
        team2.text = String(team2score)
    }
    
    @IBAction func p1Error(_ sender: Any) {
        p1.errors += 1
        team2score += 1
        team2.text = String(team2score)
    }
    
    @IBAction func p2Error(_ sender: Any) {
        p2.errors += 1
        team2score += 1
        team2.text = String(team2score)
    }
    
    @IBAction func p3Error(_ sender: Any) {
        p3.errors += 1
        team1score += 1
        team1.text = String(team1score)
    }
    
    @IBAction func p4Error(_ sender: Any) {
        p4.errors += 1
        team1score += 1
        team1.text = String(team1score)
    }
    
    @IBAction func p1Save(_ sender: Any) {
        p1.saves += 1
    }
    
    @IBAction func p2Save(_ sender: Any) {
        p2.saves += 1
    }
    
    @IBAction func p3Save(_ sender: Any) {
        p3.saves += 1
    }
    
    @IBAction func p4Save(_ sender: Any) {
        p4.saves += 1
    }
    
    
    @IBAction func EndGame(_ sender: Any) {
        performSegue(withIdentifier: "name2", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! GameResultsViewController
        vc.team1s = self.team1score
        vc.team2s = self.team2score
        vc.p1n = self.label1name
        vc.p2n = self.label2name
        vc.p3n = self.label3name
        vc.p4n = self.label4name
        vc.p1s = self.p1.spikes
        vc.p2s = self.p2.spikes
        vc.p3s = self.p3.spikes
        vc.p4s = self.p4.spikes
        vc.p1a = self.p1.aces
        vc.p2a = self.p2.aces
        vc.p3a = self.p3.aces
        vc.p4a = self.p4.aces
        vc.p1as = self.p1.assists
        vc.p2as = self.p2.assists
        vc.p3as = self.p3.assists
        vc.p4as = self.p4.assists
        vc.p1sa = self.p1.saves
        vc.p2sa = self.p2.saves
        vc.p3sa = self.p3.saves
        vc.p4sa = self.p4.saves
        vc.p1e = self.p1.errors
        vc.p2e = self.p2.errors
        vc.p3e = self.p3.errors
        vc.p4e = self.p4.errors
        vc.p1f = self.p1.faults
        vc.p2f = self.p2.faults
        vc.p3f = self.p3.faults
        vc.p4f = self.p4.faults
        
    }
    
    
}

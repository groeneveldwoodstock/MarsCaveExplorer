//
//  MenuViewController.swift
//  Cave Explorer 
//
//  Created by Richard Groeneveld on 3/9/23.
//  Copyright © 2023 Richard Groeneveld. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    var totalDistance:Int{
        get {
            // Get the standard UserDefaults as "defaults"
            let defaults = UserDefaults.standard
            
            return defaults.integer(forKey: "Distance")
        }
        set (newValue) {
            // Get the standard UserDefaults as "defaults"
            let defaults = UserDefaults.standard
            
            defaults.set(newValue, forKey: "Distance")
        }
    }
    var totalCrystals:Int{
        get {
            // Get the standard UserDefaults as "defaults"
            let defaults = UserDefaults.standard
            
            return defaults.integer(forKey: "Crystals")
        }
        set (newValue) {
            // Get the standard UserDefaults as "defaults"
            let defaults = UserDefaults.standard
            
            defaults.set(newValue, forKey: "Crystals")
        }
    }
    var totalWater:Int{
        get {
            // Get the standard UserDefaults as "defaults"
            let defaults = UserDefaults.standard
            
            return defaults.integer(forKey: "Water")
        }
        set (newValue) {
            // Get the standard UserDefaults as "defaults"
            let defaults = UserDefaults.standard
            
            defaults.set(newValue, forKey: "Water")
        }
    }
    var totalHeat:Int{
        get {
            // Get the standard UserDefaults as "defaults"
            let defaults = UserDefaults.standard
            
            return defaults.integer(forKey: "Heat")
        }
        set (newValue) {
            // Get the standard UserDefaults as "defaults"
            let defaults = UserDefaults.standard
            
            defaults.set(newValue, forKey: "Heat")
        }
    }
    var totalLife:Int{
        get {
            // Get the standard UserDefaults as "defaults"
            let defaults = UserDefaults.standard
            
            return defaults.integer(forKey: "Life")
        }
        set (newValue) {
            // Get the standard UserDefaults as "defaults"
            let defaults = UserDefaults.standard
            
            defaults.set(newValue, forKey: "Life")
        }
    }
    
    
    override func viewDidLoad() {
        var totalPointsEarned = totalDistance + totalCrystals * 10 + totalWater * 10 + totalHeat * 20 + totalLife * 100
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        InformationLabel.layer.masksToBounds = true
        InformationLabel.layer.cornerRadius = 5
        TotalDistanceLabel.layer.masksToBounds = true
        TotalDistanceLabel.layer.cornerRadius = 5
        TotalDistanceLabel.text = "Distance Explored: " + String(totalDistance)
        TotalCrystalsLabel.layer.masksToBounds = true
        TotalCrystalsLabel.layer.cornerRadius = 5
        TotalCrystalsLabel.text = "Crystal Locations: " + String(totalCrystals)
        TotalWaterLabel.layer.masksToBounds = true
        TotalWaterLabel.layer.cornerRadius = 5
        TotalWaterLabel.text = "Water Ice Locations: " + String(totalWater)
        TotalHeatLabel.layer.masksToBounds = true
        TotalHeatLabel.layer.cornerRadius = 5
        TotalHeatLabel.text = "Heat Source Locations: " + String(totalHeat)
        TotalLifeLabel.layer.masksToBounds = true
        TotalLifeLabel.layer.cornerRadius = 5
        TotalLifeLabel.text = "Signs of Life: " + String(totalLife)
        totalPoints.text = "EXPLORER POINTS EARNED: " + String(totalPointsEarned)
    }
    @IBOutlet weak var totalPoints: UILabel!
    @IBOutlet weak var InformationLabel: UILabel!
    @IBOutlet weak var TotalDistanceLabel: UILabel!
    @IBOutlet weak var TotalCrystalsLabel: UILabel!
    @IBOutlet weak var TotalWaterLabel: UILabel!
    @IBOutlet weak var TotalHeatLabel: UILabel!
    @IBOutlet weak var TotalLifeLabel: UILabel!
    
    
    
    
}

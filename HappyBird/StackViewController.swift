//
//  StackViewController.swift
//  Cave Explorer 
//
//  Created by Richard Groeneveld on 3/23/23.
//  Copyright © 2023 Richard Groeneveld. All rights reserved.
//

import UIKit

class StackViewController: UIViewController {
    
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
    // Connections to labels
    @IBOutlet var stack: UIView!
    @IBOutlet weak var Info: UILabel!
    @IBOutlet weak var DistanceLabel: UILabel!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var CrystalLabel: UILabel!
    @IBOutlet weak var WaterLabel: UILabel!
    @IBOutlet weak var HeatLabel: UILabel!
    @IBOutlet weak var LifeLabel: UILabel!
    @IBOutlet weak var PointsLabel: UILabel!
    @IBOutlet weak var GoButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let totalPointsEarned = totalDistance + totalCrystals * 10 + totalWater * 10 + totalHeat * 20 + totalLife * 100
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        DistanceLabel.layer.masksToBounds = true
        DistanceLabel.layer.cornerRadius = 5
        DistanceLabel.layer.borderWidth = 2.0
        DistanceLabel.layer.borderColor = UIColor.white.cgColor
        DistanceLabel.text = "Distance Explored: " + String(totalDistance)
        CrystalLabel.layer.masksToBounds = true
        CrystalLabel.layer.cornerRadius = 5
        CrystalLabel.layer.borderWidth = 2.0
        CrystalLabel.text = "Crystal Locations: " + String(totalCrystals)
        WaterLabel.layer.masksToBounds = true
        WaterLabel.layer.cornerRadius = 5
        WaterLabel.layer.borderWidth = 2.0
        WaterLabel.text = "Water Ice Locations: " + String(totalWater)
        HeatLabel.layer.masksToBounds = true
        HeatLabel.layer.cornerRadius = 5
        HeatLabel.layer.borderWidth = 2.0
        HeatLabel.text = "Heat Source Locations: " + String(totalHeat)
        LifeLabel.layer.masksToBounds = true
        LifeLabel.layer.cornerRadius = 5
        LifeLabel.layer.borderWidth = 2.0
        LifeLabel.text = "Signs of Life: " + String(totalLife)
        PointsLabel.layer.masksToBounds = true
        PointsLabel.layer.cornerRadius = 5
        PointsLabel.layer.borderWidth = 2.0
        PointsLabel.text = "EXPLORER POINTS EARNED: " + String(totalPointsEarned)
        GoButton.layer.masksToBounds = true
        GoButton.layer.borderWidth = 5.0
        GoButton.layer.cornerRadius = 10
        GoButton.layer.borderColor = UIColor.darkGray.cgColor
        homeButton.layer.masksToBounds = true
        homeButton.layer.borderWidth = 5.0
        homeButton.layer.cornerRadius = 10
        homeButton.layer.borderColor = UIColor.white.cgColor
    }
    


}

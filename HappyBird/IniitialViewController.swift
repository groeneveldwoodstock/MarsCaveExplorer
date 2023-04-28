//
//  IniitialViewController.swift
//  Cave Explorer 
//
//  Created by Richard Groeneveld on 4/11/23.
//  Copyright © 2023 Richard Groeneveld. All rights reserved.
//

import UIKit

class IniitialViewController: UIViewController {
    
    @IBOutlet weak var statsButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var info: UILabel!
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
        super.viewDidLoad()
        info.layer.masksToBounds = true
        info.layer.cornerRadius = 5
        info.layer.borderWidth = 5.0
        info.layer.borderColor = UIColor.systemBrown.cgColor
        info.adjustsFontSizeToFitWidth = true
        // Do any additional setup after loading the view.
        statsButton.layer.masksToBounds = true
        statsButton.layer.borderWidth = 5.0
        statsButton.layer.cornerRadius = 10
        statsButton.layer.borderColor = UIColor.white.cgColor
        playButton.layer.masksToBounds = true
        playButton.layer.borderWidth = 5.0
        playButton.layer.cornerRadius = 10
        playButton.layer.borderColor = UIColor.darkGray.cgColor


    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

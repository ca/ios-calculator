//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Alexander Vallorosi on 9/8/16.
//  Copyright © 2016 Alexander Vallorosi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DamopolousLabel: UILabel!
    
    @IBAction func DamopolousButton(sender: AnyObject) {
        DamopolousLabel.text = "YOU CLICKED MY BUTTON"
    }
    
    
    
    
    
    
    
    
    @IBOutlet weak var CalculatorOutputLabel: UILabel!
    var runningTotal:Double = 0
    
    @IBAction func OneButtonAction(sender: UIButton) {
        if let textValue = sender.titleLabel?.text {
            let value = (textValue as NSString).doubleValue
            runningTotal = value
            CalculatorOutputLabel.text = "\(runningTotal)"
        }
    }
    
    @IBAction func AddButtonAction(sender: AnyObject) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        DamopolousLabel.text = "TESTING"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


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
    var display:Double = 0
    var runningTotal:Double = 0
    var commands:[Command] = []
    
    @IBAction func OneButtonAction(sender: UIButton) {
        
        
        
//        commands.append(sender.titleLabel?.text)
        
        
        
        if let textValue = sender.titleLabel?.text {
            let value = (textValue as NSString).doubleValue
            display = value
            runningTotal = value
            CalculatorOutputLabel.text = "\(display)"
        }
    }
    
    @IBAction func AddButtonAction(sender: AnyObject) {
        
    }

    
    func processStack(stack:[Command]) {
        
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


enum CommandType {
    case `operator`
    case value
}

enum OperatorType {
    case add
    case subtract
    func perform(x:Double, y:Double) -> Double {
        switch self {
            case add: return x + y
            case subtract: return x - y
        }
    }
}
struct Command {
    let type: CommandType
    let value: Double?
    let operatorType: OperatorType?
}
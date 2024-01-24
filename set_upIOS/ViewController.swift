//
//  ViewController.swift
//  set_upIOS
//
//  Created by Amber Do on 2024-01-23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var mySwitch : UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
        @IBAction func changeBackgroundColor(_ sender: UIButton){
            let randomColor = changeColor()
            view.backgroundColor = randomColor;
           
        }
    

    func changeColor()->UIColor{
        let red = CGFloat.random(in:0...1)
        let green = CGFloat.random(in:0...1)
        let blue = CGFloat.random(in:0...1)
        
        return UIColor(red:red, green:green, blue:blue, alpha:0.5);
    }
    @IBAction func changeSwitch(_ sender: UISwitch) {
        if sender.isOn{
            view.backgroundColor = .red;
        }else{
            view.backgroundColor = .yellow;
        }
    }
}


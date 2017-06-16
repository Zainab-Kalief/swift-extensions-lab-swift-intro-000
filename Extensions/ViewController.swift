//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let fullName = "Wura Alese"
        let phoneNumber = 8675309
        
        print(fullName.points)
        print(fullName.whisper())
        print(fullName.shout())
        print(fullName.pigLatin)
        print(phoneNumber.isDivisible(by: 9))
        print(phoneNumber.half())
        print(phoneNumber.halved)
        print(phoneNumber.squared)
        
        unicornLevelLabel.text = fullName.unicornLevel
    }
}



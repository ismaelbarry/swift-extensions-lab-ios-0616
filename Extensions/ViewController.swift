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
        
        let fullName : String = "A E I O U r 9"
        let phoneNumber : Int = 8675309
        print("\(fullName.pigLatin)")
        print("\(fullName.points)")
        print("\(fullName.whisper())")
        print("\(fullName.shout())")
        print("\(fullName.unicornLevel)")
        
        print("\(phoneNumber.halved)")
        print("\(phoneNumber.half())")
        print("\(phoneNumber.isDivisibleBy(5))")
        print("\(phoneNumber.squared())")
        
        
    }
}



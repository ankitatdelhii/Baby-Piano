//
//  ViewController.swift
//  Baby-Piano
//
//  Created by Ankit Saxena on 08/02/19.
//  Copyright © 2019 Ankit Saxena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pianoButtonPressed(_ sender: UIButton) {
        print(sender.tag)
    }
    
}


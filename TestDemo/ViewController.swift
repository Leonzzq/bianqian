//
//  ViewController.swift
//  TestDemo
//
//  Created by 刘在希 on 2018/12/23.
//  Copyright © 2018 刘在希. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animationView: TestXib!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func runAnimation(_ sender: Any) {
        
        animationView.anid()
    }
    
}


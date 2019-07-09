//
//  ViewController.swift
//  SFScreenShot
//
//  Created by VB on 10.07.2019.
//  Copyright © 2019 VB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func takeScreenShot(_ sender: Any) {
        var image = self.view.takeshot()!
        imageView.image = image
    }
    
}


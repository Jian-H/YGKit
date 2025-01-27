//
//  ViewController.swift
//  YGKit
//
//  Created by Jian-H on 01/27/2025.
//  Copyright (c) 2025 Jian-H. All rights reserved.
//

import UIKit
import YGKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let lottieAnimationView =  view.addLottieAnimation(name: "Lottie", frame: view.frame, loopMode: .loop)
        lottieAnimationView.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


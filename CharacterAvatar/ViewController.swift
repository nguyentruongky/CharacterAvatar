//
//  ViewController.swift
//  CharacterAvatar
//
//  Created by Ky Nguyen on 5/24/16.
//  Copyright © 2016 Ky Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rect = CGRect(x: 100, y: 100, width: 100, height: 100)
        let avatar = CircleCharacterView(frame: rect, character: "K")
        self.view.addSubview(avatar)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


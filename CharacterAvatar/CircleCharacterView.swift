//
//  CircleCharacterView.swift
//  CharacterAvatar
//
//  Created by Ky Nguyen on 5/24/16.
//  Copyright © 2016 Ky Nguyen. All rights reserved.
//

import UIKit

class CircleCharacterView: UIView {

    required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
    
    override init(frame: CGRect) { super.init(frame: frame) }
    
    convenience init(frame: CGRect, character: String) {
        
        self.init(frame: frame)
        
        createCircleAvatarFromCharacter(character)
    }
    
    func createCircleAvatarFromCharacter(c: String) {
        
        self.layer.cornerRadius = self.frame.width / 2
        
        let r = CGFloat(arc4random_uniform(150)) / 255
        let g = CGFloat(arc4random_uniform(150)) / 255
        let b = CGFloat(arc4random_uniform(150)) / 255
        
        self.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        
        let label = UILabel(frame: self.frame)
        label.text = c
        label.textAlignment = NSTextAlignment.Center
        label.frame.origin = CGPoint(x: 0, y: 0)
        label.backgroundColor = UIColor.clearColor()
        label.font = UIFont.boldSystemFontOfSize(self.frame.size.width / 2)
        label.textColor = UIColor.whiteColor()
        self.addSubview(label)
    }


}

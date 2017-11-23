//
//  MenuButton.swift
//  Lily
//
//  Created by Omar Al-Ejel on 11/22/17.
//  Copyright © 2017 Omar Al-Ejel. All rights reserved.
//

import UIKit

class MenuButton: SqueezeButton {
    
    @IBOutlet weak var largeTitleLabel: UILabel!
    
    @IBOutlet weak var cornerImageView: UIImageView!
    
    var image: UIImage? {
        didSet {
            cornerImageView.image = image
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
       
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let contentView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        // use bounds not frame or it'll be offset
        contentView.frame = bounds
        
        // Make the view stretch with containing view
        contentView.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        
        contentView.isUserInteractionEnabled = false
        contentView.backgroundColor = .clear
        
        // Adding custom subview on top of our view
        addSubview(contentView)
       
    }
}

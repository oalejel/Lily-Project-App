//
//  FormItemView.swift
//  Lily
//
//  Created by Omar Al-Ejel on 12/16/17.
//  Copyright © 2017 Omar Al-Ejel. All rights reserved.
//

import UIKit

extension UIControl {
    var computedValue: String {
        switch self {
        case is UITextField:
            return (self as! UITextField).text!
        case is UISwitch:
            let on = (self as! UISwitch).isEnabled
            return on ? "yes" : "no"
        case is UIDatePicker:
            let df = DateFormatter()
            df.dateFormat = "M/d/Y"  //date format matches lily form examples
            let date = (self as! UIDatePicker).date
            return df.string(from: date)
        default:
            return "control computed value not implemented"
        }
    }
}

class FormItemView: UIView {
    var layedOut = false
    var mainStackView: UIStackView!
    let screenBounds = UIScreen.main.bounds
    
    var formTitleLabel: UILabel!
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        if !layedOut {
            let labelHeight = frame.size.height * 0.1
            let width = screenBounds.width
            
            //add a form input name on top
            formTitleLabel = UILabel(frame: CGRect(x: 8, y: 8, width: width - 8, height: labelHeight))
            formTitleLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
            formTitleLabel.text = "Form Item"
            addSubview(formTitleLabel)
            
            //add the stack view
            mainStackView = UIStackView(frame: CGRect(x: 8, y: labelHeight + 16, width: width - 16, height: frame.size.height - (24 + labelHeight)))
            mainStackView.axis = .vertical
            mainStackView.alignment = .fill
            addSubview(mainStackView)
            
            
//            //create constraints
//            let topToLabelConstraint = NSLayoutConstraint(item: formTitleLabel, attribute: .top, relatedBy: .equal, toItem: self, attribute: .topMargin, multiplier: 1, constant: 8)
//            let leftLabelConstrain = NSLayoutConstraint(item: formTitleLabel, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1, constant: -16)
//            let rightLabelConstrain = NSLayoutConstraint(item: formTitleLabel, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: 8)
//            let labelHeightConstraint = NSLayoutConstraint(item: formTitleLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: labelHeight)

//            let labelToStackConstraint = NSLayoutConstraint(item: formTitleLabel, attribute: .bottom, relatedBy: .equal, toItem: mainStackView, attribute: .top, multiplier: 1, constant: 8)
//
//            let stackLeftConstraint = NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: mainStackView, attribute: .leading, multiplier: 1, constant: 8)
//            let stackRightConstraint = NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: mainStackView, attribute: .trailing, multiplier: 1, constant: 8)
//            let stackBottomConstraint = NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: mainStackView, attribute: .bottomMargin, multiplier: 1, constant: 8)

//            addConstraints([topToLabelConstraint, leftLabelConstrain, rightLabelConstrain, labelHeightConstraint])
        }
        layedOut = true
    }
    
    
    
}

//
//  ViewController.swift
//  Lily
//
//  Created by Omar Al-Ejel on 10/23/17.
//  Copyright © 2017 Omar Al-Ejel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        (parent as? UINavigationController)?.navigationBar.prefersLargeTitles = true
        (parent as? UINavigationController)?.navigationBar.largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
        let flowerImage = UIImage(named: "lily_flower")!.withRenderingMode(.alwaysOriginal)
//        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
//        button.contentMode = .scaleAspectFit
//        button.setImage(flowerImage, for: .normal)
//        let iconItem = UIBarButtonItem(customView: button)
        let flowerItem = UIBarButtonItem(image: flowerImage, style: .plain, target: nil, action: nil)
        navigationItem.rightBarButtonItem = flowerItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


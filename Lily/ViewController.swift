//
//  ViewController.swift
//  Lily
//
//  Created by Omar Al-Ejel on 10/23/17.
//  Copyright © 2017 Omar Al-Ejel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var addFormButton: MenuButton!
    @IBOutlet weak var viewDataButton: MenuButton!
    
    @IBOutlet weak var settingsButton: SqueezeButton!
    @IBOutlet weak var exportButton: SqueezeButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        addFormButton.layer.cornerRadius = 10
        addFormButton.layer.masksToBounds = false // need this to show shadows
        addFormButton.layer.shadowColor = UIColor.black.cgColor
        addFormButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        addFormButton.layer.shadowRadius = 5
        addFormButton.layer.shadowOpacity = 0.4
        addFormButton.largeTitleLabel.text = "New Form"
        addFormButton.image = UIImage(named: "plus_icon")
        
        viewDataButton.layer.cornerRadius = 10
        viewDataButton.layer.masksToBounds = false
        viewDataButton.layer.shadowColor = UIColor.black.cgColor
        viewDataButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        viewDataButton.layer.shadowRadius = 5
        viewDataButton.layer.shadowOpacity = 0.4
        viewDataButton.largeTitleLabel.text = "View Data"
        viewDataButton.image = UIImage(named: "eye_icon")
        
        settingsButton.layer.cornerRadius = settingsButton.frame.size.height / 2
        settingsButton.layer.masksToBounds = false
        
        exportButton.layer.cornerRadius = 10
        exportButton.layer.masksToBounds = false
    
        
        (parent as? UINavigationController)?.navigationBar.prefersLargeTitles = true
        (parent as? UINavigationController)?.navigationBar.largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
        let flowerImage = UIImage(named: "lily_flower")!.withRenderingMode(.alwaysOriginal)
//        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
//        button.contentMode = .scaleAspectFit
//        button.setImage(flowerImage, for: .normal)
//        let iconItem = UIBarButtonItem(customView: button)
        let flowerItem = UIBarButtonItem(image: flowerImage, style: .plain, target: nil, action: nil)
        navigationItem.rightBarButtonItem = flowerItem
        
        let em = ExcelManager()
        em.write()
        em.save()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        var newProgress = formProgressView.progress + 0.05
//        formProgressView.setProgress(newProgress, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


//
//  NewFormController.swift
//  Lily
//
//  Created by Omar Al-Ejel on 11/23/17.
//  Copyright © 2017 Omar Al-Ejel. All rights reserved.
//

import UIKit

class NewFormController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var sectionLabel: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        navigationItem.title = "New Form" // add localization to this!
        
        let testFormView = FormItemView(frame: CGRect(origin: CGPoint.zero, size: scrollView.frame.size))
        scrollView.addSubview(testFormView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

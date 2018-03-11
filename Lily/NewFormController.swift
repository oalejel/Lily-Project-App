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
    
    var formInputClasses = ["Name":UITextField.self, "Age":UITextField.self, "Birthday":UIDatePicker.self]
    var inputTitles = ["Name", "Age", "Birthday", "Community", "Current Address", "Gestations", "Births", "Abortions", "Miscarriages", "Age of initial sexual activity", "Number of sexual partners", "Number of children", "Last Menstruation", "Types of contraceptives used", "Date of first use of contraceptives", "Number of cryotherapy treatments", "Hormonal Treatments", "Radiation Treatments", "Hysterectomies", "Smoke??"]
    
    /*
     Notes on some of the input types:
     - we need to have age and birthday separated, since some patients know their age, but not their birth date for certain reasons
 
 */
    
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

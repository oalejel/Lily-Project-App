//
//  SettingsTableController.swift
//  Lily
//
//  Created by Omar Al-Ejel on 11/20/17.
//  Copyright © 2017 Omar Al-Ejel. All rights reserved.
//

import UIKit

class SettingsTableController: UITableViewController {
//    enum SettingType {
//        case languageSetting, textSize, deleteDataAfterExport
//    }
//    var settingTypes: [SettingType] = [.languageSetting, .textSize, .deleteDataAfterExport]
    
    var settingGroups: [String?] = ["Language", "Text Size", "Data"]
    var settingSubGroupDict: [String:[String]?] = ["Data":["Delete data after export"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        tableView.rowHeight = UITableViewAutomaticDimension
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return settingGroups.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //if there is a special number of settings in a group, then use that number of rows
        if let settingName = settingGroups[section] {
            if let numRows = settingSubGroupDict[settingName]??.count {
                return numRows
            }
        }
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        // Configure the cell...
        var cellPurpose = settingSubGroupDict[settingGroups[indexPath.section]!]??[indexPath.row]
        cell.textLabel?.text = cellPurpose
        if cellPurpose == nil {
            cellPurpose = settingGroups[indexPath.section]
        }
        
        switch cellPurpose! {
        case "Language":
            let tableWidth = view.frame.size.width
            let cellHeight: CGFloat = 44// tried UITableViewAutomaticDimension but it didnt give me what i wanted
            let segmentFrame = CGRect(origin: CGPoint.zero, size: CGSize(width: tableWidth - 16, height: cellHeight - 16))
            let segmentControl = UISegmentedControl(frame: segmentFrame)
            
            segmentControl.center = CGPoint(x: tableWidth / 2, y: cellHeight / 2)
            //these two should be translated to spanish when english setting is on
            segmentControl.insertSegment(withTitle: "Spanish", at: 0, animated: false)
            segmentControl.insertSegment(withTitle: "English", at: 1, animated: false)
            segmentControl.selectedSegmentIndex = 1
            
            segmentControl.tintColor = .blue
//            segmentControl.addTarget(self, action: #selector(segmentValueChanged), for: .valueChanged)
            cell.addSubview(segmentControl)
        default:
            break
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return settingGroups[section]
    }
    
    @objc func segmentValueChanged(segmentControl: UISegmentedControl) {
        
        
    }
 
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

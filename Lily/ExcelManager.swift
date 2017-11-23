//
//  ExcelManager.swift
//  Lily
//
//  Created by Omar Al-Ejel on 11/21/17.
//  Copyright © 2017 Omar Al-Ejel. All rights reserved.
//

import UIKit

class ExcelManager {
    var spreadsheet: BRAOfficeDocumentPackage?
    let dateFormatter = DateFormatter()
    
    func write() {
        let docPath = Bundle.main.path(forResource: "excel_form", ofType: "xlsx")
        spreadsheet = BRAOfficeDocumentPackage.open(docPath)
        
        if let worksheet = spreadsheet?.workbook.worksheets[0] as? BRAWorksheet {
            //get string reference
            let cellString = worksheet.cell(forCellReference: "A4").stringValue()
            print(cellString)
            let b6Int = worksheet.cell(forCellReference: "B6").floatValue()
            print(b6Int)
            //writing
            worksheet.cell(forCellReference: "A1").setStringValue("sample string")
        } else {
            print("could not get to worksheet")
        }
    }
    
    func save() {
        let dateString = dateFormatter.string(from: Date())
        let fullPath = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).last
        //#warning that this path may need tweaking
        if let p = fullPath {
            spreadsheet?.save(as: "\(p)/excel_form_\(dateString).xlsx")
        } else {
            print("error getting path to save to")
        }
        
    }
}

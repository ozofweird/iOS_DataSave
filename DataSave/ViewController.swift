//
//  ViewController.swift
//  DataSave
//
//  Created by Ahn on 2020/05/23.
//  Copyright © 2020 ozofweird. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    let context: NSManagedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // FirstLaunch일 경우
        if UserDefaults.standard.bool(forKey: "NotFirstLaunch") {
            print("is Not FirstLunch")
            UserDefaults.standard.set(false, forKey: "NotFirstLaunch")
        } else {
            // FirstLaunch가 아닐 경우
            UserDefaults.standard.set(true, forKey: "NotFirstLaunch")
        }
    }


}


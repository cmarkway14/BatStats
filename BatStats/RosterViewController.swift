//
//  RosterViewController.swift
//  BatStats
//
//  Created by Curtis Markway on 11/6/16.
//  Copyright © 2016 Curtis Markway. All rights reserved.
//

import UIKit

class RosterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Roster"
        // Do any additional setup after loading the view.
        
        //Implement all of task manager functionality here
    }

    override func viewWillAppear(_ animated: Bool) {
        self.hidesBottomBarWhenPushed = false

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

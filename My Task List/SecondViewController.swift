//
//  SecondViewController.swift
//  My Task List
//
//  Created by Pandu on 6/12/14.
//  Copyright (c) 2014 Pandurang Yachwad Creation. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func btnAddTask_Click(sender: UIButton){
        if txtTask.text != ""
        {
        taskMgr.addTask(txtTask.text, desc: txtDesc.text)
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        self.tabBarController.selectedIndex = 0
        }
        else {
            
        }
    }
    
    
    //iOS Touch functions
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true);
    }
    
    //UITextField Delegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder();
        return true
    }
    

}


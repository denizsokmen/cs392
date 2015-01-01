//
//  AddBugViewController.swift
//  Raid
//
//  Created by student7 on 24/12/14.
//  Copyright (c) 2014 student7. All rights reserved.
//

import UIKit

class AddBugViewController: UIViewController {
    var project: Project!
    
    
    @IBOutlet weak var titleLabel: UITextField!
    @IBOutlet weak var selector: UIPickerView!
    
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.grayColor().CGColor
        let controller = self.tabBarController as ProjectTabController
        self.project = controller.project
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    /* func pickerView(pickerView: UIPickerView, numberOfRowsInComponent: component) {
    return colors.count
    }*/
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 1
    }
    
    // pragma MARK: UIPickerViewDelegate
    @IBAction func doneClicked(sender: AnyObject) {
        project.addBug(titleLabel.text, priority: 1, desc: textView.text)
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return "asd"
    }

    
}


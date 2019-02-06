//
//  AddController.swift
//  Todolistapp-1
//
//  Created by 短期学部 on 2019/01/22.
//  Copyright © 2019年 RiChangryo. All rights reserved.
//

import UIKit

var TodoKobetsunonakami = [String]()

class AddController: UIViewController {
    
    @IBOutlet weak var TodoTextField: UITextField!
    
    @IBAction func TodoAddButton(_ sender: Any) {
        TodoKobetsunonakami.append(TodoTextField.text!)
        
        TodoTextField.text = ""
        
        UserDefaults.standard.set(TodoKobetsunonakami, forKey: "TodoList")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

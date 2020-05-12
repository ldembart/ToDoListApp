//
//  AddToDoViewController.swift
//  ToDoListApp
//
//  Created by Lucas  Dembart on 5/3/20.
//  Copyright © 2020 Lucas  Dembart. All rights reserved.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {

    var previousVC = ToDoTableViewController()
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
    
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
          return
        }
        
        let context = appDelegate.persistentContainer.viewContext
        
        let toDo = ToDoCD(context: context)
        
        toDo.important = importantSwitch.isOn
        toDo.name = titleTextField.text
        
        appDelegate.saveContext()
        
        navigationController?.popViewController(animated: true)
        
        
        
// Code for iteration 1 below
//        let toDo = ToDo()
//
//        if let titleText = titleTextField.text {
//          toDo.name = titleText
//          toDo.important = importantSwitch.isOn
//        }
//        previousVC.toDos.append(toDo)
//        previousVC.tableView.reloadData()
//        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

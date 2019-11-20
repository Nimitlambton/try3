//
//  ViewController.swift
//  try3
//
//  Created by JASI on 19/11/19.
//  Copyright © 2019 Nimit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tabel: UITableView!
    
    
   
    @IBOutlet weak var img: UIImageView!
    
    
    
    
    @IBOutlet weak var question: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
       
        
        let path = Bundle.main.path(forResource: "questionList", ofType: "plist")
        
        let dict = NSDictionary(contentsOfFile: path!)
        let data = dict?.object(forKey: "questions") as! [[String]]
        let try1 =  data.randomElement()
        
        
        print(try1)
        
        img.image = UIImage(named: "image5")
        
        
        
        
    }


}

extension ViewController : UITableViewDataSource , UITableViewDelegate{
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let path = Bundle.main.path(forResource: "questionList", ofType: "plist")
        
        let dict = NSDictionary(contentsOfFile: path!)
        let data = dict?.object(forKey: "questions") as! [[String]]
        let try1 =  data.randomElement()

        return 4
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let path = Bundle.main.path(forResource: "questionList", ofType: "plist")
        
        let dict = NSDictionary(contentsOfFile: path!)
        let data = dict?.object(forKey: "questions") as! [[String]]
        let try1 =  data.randomElement()
        let data1 = try1?[indexPath.row]
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "options") as! TableViewCell
        
        
        cell.lbl1.text = data1
      
        
      
      
        return cell
    
    
        
        
        
    
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
       
        
       let path = Bundle.main.path(forResource: "questionList", ofType: "plist")
        
        let dict = NSDictionary(contentsOfFile: path!)
        let data = dict?.object(forKey: "questions") as! [[String]]
        let try1 =  data.randomElement()
     
     
        print(try1![5])
        
       
        question.text = try1![4]
     
        img.image = UIImage(named: try1![5])
        
        
        tableView.reloadData()
        
     
        
        
    }
    
    
    
    
    
    
}

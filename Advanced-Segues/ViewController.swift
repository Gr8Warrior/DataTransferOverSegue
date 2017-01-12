//
//  ViewController.swift
//  Advanced-Segues
//
//  Created by Shailendra Suriyal on 12/01/17.
//  Copyright © 2017 RealDev. All rights reserved.
//

import UIKit

var userName = "Shailu"

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    var activeRow:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = "Row \(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        activeRow = indexPath.row
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4;
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            
            let secondVC = segue.destination as! SecondViewController
            secondVC.activeRow = activeRow ;
            
        }
    }

}


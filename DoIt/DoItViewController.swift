//
//  ViewController.swift
//  DoIt
//
//  Created by Nabyl Bennouri on 5/10/19.
//  Copyright © 2019 Three14. All rights reserved.
//

import UIKit

class DoItViewController: UITableViewController {

    let data = ["Hello", "Welcome"]
    let theme = Theme()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: Table Data Source
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DoItItemCell", for: indexPath)
        
        cell.textLabel!.text = data[indexPath.row]
  //      cell.textLabel!.textColor = theme.FontColor
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    // MARK: Table Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.cellForRow(at: indexPath)?.accessoryType = (tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark) ? .none : .checkmark
        print(data[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


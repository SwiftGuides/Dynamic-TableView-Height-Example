//
//  NewViewViewController.swift
//  collectionViewCustomHeaderDemo
//
//  Created by MacMini on 12/26/19.
//  Copyright © 2019 Immanent. All rights reserved.
//

import UIKit

class NewViewViewController: UIViewController {

    @IBOutlet weak var myNewTableView: UITableView!
    @IBOutlet weak var tableViewHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myNewTableView.rowHeight = 60
        myNewTableView.estimatedRowHeight = UITableView.automaticDimension
        
    }

    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

    }

}

extension NewViewViewController:UITableViewDelegate,UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewTableViewCell", for: indexPath) as! NewTableViewCell
        cell.testLabel.text = "Testing the height of tableview"

        self.tableViewHeightConstraint.constant = self.myNewTableView.contentSize.height
        self.view.layoutIfNeeded()
        
        return cell
    }
    
    
}



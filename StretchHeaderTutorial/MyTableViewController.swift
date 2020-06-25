//
//  MyTableViewController.swift
//  StretchHeaderTutorial
//
//  Created by Ajroudi Mohammed on 03/01/2019.
//  Copyright © 2019 Ajroudi Mohammed. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var imageView : UIImageView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.contentInset = UIEdgeInsets(top: 300, left: 0, bottom: 0, right: 0)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.size.height - 60
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        return cell
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let y = -scrollView.contentOffset.y
        let height = max( y, 100 )
        imageView?.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: height)
    }
}

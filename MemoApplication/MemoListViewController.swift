//
//  ViewController.swift
//  MemoApplication
//
//  Created by 이준수 on 2020/02/12.
//  Copyright © 2020 이준수. All rights reserved.
//

import UIKit

class MemoListViewController: UIViewController {

    
    // MARK: UI
    
    let memoListTableView: UITableView = UITableView()
    
    

    // Initialize
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        memoListTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
    }


}


extension MemoListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTableViewCell
        
        cell
        
        return cell
    }
    
}


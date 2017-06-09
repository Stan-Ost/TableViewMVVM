//
//  ViewController.swift
//  TableViewWithMultipleCellTypes
//
//  Created by Stanislav Ostrovskiy on 4/25/17.
//  Copyright © 2017 Stanislav Ostrovskiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    fileprivate let viewModel = ProfileViewModel()
    
    @IBOutlet weak var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableview()
    }
    
    private func setupTableview() {
        tableView?.dataSource = viewModel
        
        tableView?.estimatedRowHeight = 100
        tableView?.rowHeight = UITableViewAutomaticDimension
        
        tableView?.register(AboutCell.nib, forCellReuseIdentifier: AboutCell.reuseIdentifier)
        tableView?.register(NamePictureCell.nib, forCellReuseIdentifier: NamePictureCell.reuseIdentifier)
        tableView?.register(FriendCell.nib, forCellReuseIdentifier: FriendCell.reuseIdentifier)
        tableView?.register(AttributeCell.nib, forCellReuseIdentifier: AttributeCell.reuseIdentifier)
        tableView?.register(EmailCell.nib, forCellReuseIdentifier: EmailCell.reuseIdentifier)
        
    }
}

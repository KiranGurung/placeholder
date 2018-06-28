//
//  ViewController.swift
//  testing
//
//  Created by Kenji Mah on 6/25/18.
//  Copyright © 2018 Kenji Mah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var headerView: UIView!
    var titleView: UILabel!
    var displayCollectionView: UICollectionView!
    //let displayCellsDelegate = displayCollectionViewDelegateAndDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        headerView = UIView()
        headerView.backgroundColor = .red
        self.view.addSubview(headerView)
        
        titleView = UILabel()
        titleView.text = "TESTING"
        titleView.textAlignment = .center
        titleView.font = UIFont(name: titleView.font.fontName, size: 20)
        headerView.addSubview(titleView)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        headerView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.15).isActive = true
        
        titleView.translatesAutoresizingMaskIntoConstraints = false
        titleView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
        titleView.bottomAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
        titleView.widthAnchor.constraint(equalTo: headerView.widthAnchor, multiplier: 0.4).isActive = true
        titleView.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.5).isActive = true
        
        let frame = self.view.frame
        let layout = UICollectionViewFlowLayout()
        displayCollectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        self.view.addSubview(displayCollectionView)
        
        displayCollectionView.translatesAutoresizingMaskIntoConstraints = false
        displayCollectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        displayCollectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        displayCollectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        displayCollectionView.topAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
        
        displayCollectionView.register(displayCollectionViewCell.self, forCellWithReuseIdentifier: "myCell")
        //displayCollectionView.delegate = displayCellsDelegate
        //displayCollectionView.dataSource = displayCellsDelegate
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


//
//  ViewController.swift
//  calculator
//
//  Created by osakamiseri on 2020/04/20.
//  Copyright © 2020 osakamiseri. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = caluculator.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath)
        
        return cell
    }
    

    @IBOutlet weak var caluculator: UICollectionView!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var calculatorHeight: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        caluculator.delegate = self
        caluculator.dataSource = self
        caluculator.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellID")
    }


}


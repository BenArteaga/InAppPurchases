//
//  ViewController.swift
//  InAppPurchases
//
//  Created by Ben Arteaga on 5/20/20.
//  Copyright © 2020 Ben Arteaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let products = ["tier1", "tier2", "tier3", "tier4", "tier5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "purchaseCell", for: indexPath) as? PurchaseCell {
            cell.configureCell(imageName: products[indexPath.row])
            return cell
        }
        else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.bounds.size.width/2 - 20, height: 160)
        //makes sure cells look good on any screen size
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPat: IndexPath) {
        //gets called when cell is tapped
    }


}


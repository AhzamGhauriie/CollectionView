//
//  ViewController.swift
//  CollectionView
//
//  Created by HigherVisibility on 01/12/2019.
//  Copyright © 2019 ahmedHigherVisibility. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
     let foodname = ["club sandwich","burger","pasta","pizza","fries","quadracheetosburger","club sandwich","burger","pasta","pizza","fries","quadracheetosburger"]
 
 let foodimg: [UIImage] = [#imageLiteral(resourceName: "clubsandwich"),#imageLiteral(resourceName: "quadracheetosburger"),#imageLiteral(resourceName: "pasta"),#imageLiteral(resourceName: "pizza"),#imageLiteral(resourceName: "fries"),#imageLiteral(resourceName: "burger"),#imageLiteral(resourceName: "clubsandwich"),#imageLiteral(resourceName: "quadracheetosburger"),#imageLiteral(resourceName: "pasta"),#imageLiteral(resourceName: "pizza"),#imageLiteral(resourceName: "fries"),#imageLiteral(resourceName: "burger")]
   
    @IBOutlet weak var CollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   let edge:CGFloat = 21.0

        let itemsize = (self.CollectionView.frame.width / 2.5)

   let layout = UICollectionViewFlowLayout()

   layout.sectionInset = UIEdgeInsets(top: edge, left: edge, bottom: edge, right: edge)

   layout.itemSize = CGSize(width: itemsize, height: itemsize)

   layout.minimumInteritemSpacing = 0
   layout.minimumLineSpacing = 0
   self.CollectionView.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodname.count
     }
     
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell:UiCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! UiCollectionViewCell
        
        cell.fdname.text = foodname [indexPath.row]
        cell.fdimg.image = foodimg [indexPath.row]
        return cell
        
     }

}


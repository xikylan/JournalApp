//
//  JournalCollectionVC.swift
//  Journal
//
//  Created by Lan Nguyen on 5/8/20.
//  Copyright © 2020 Lan Nguyen. All rights reserved.
//

import UIKit

class JournalCollectionVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        self.title = "Journal"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.barTintColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        // Do any additional setup after loading the view.

        let layout = UICollectionViewFlowLayout()

        let collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: layout)

        collectionView.register(JournalEntryViewCell.self, forCellWithReuseIdentifier: "collectionCell")

        collectionView.delegate = self
        collectionView.dataSource = self

        collectionView.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)

        collectionView.contentInset = UIEdgeInsets(top: 20.0, left: 30, bottom: 20.0, right: 30)

        self.view.addSubview(collectionView)

    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath as IndexPath) as! JournalEntryViewCell

        cell.backgroundColor = UIColor.white
        cell.layer.cornerRadius = 10.0

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let numCells = 2

        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = 14

        let totalSpace = flowLayout.sectionInset.left + 30
            + flowLayout.sectionInset.right + 30
            + ((flowLayout.minimumInteritemSpacing) * CGFloat(numCells - 1))

        let size = Int((collectionView.bounds.width - totalSpace) / CGFloat(numCells))

        return CGSize(width: size, height: size + 50)
    }

//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}




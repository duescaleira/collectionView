//
//  ViewController.swift
//  desafioCollectionView
//
//  Created by Eduardo Escaleira on 01/09/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
   

    @IBOutlet var carrosCollectionView: UICollectionView!
    
    var carrosArray = ["carro1.jpg", "carro2.jpg", "carro3.jpg", "carro4.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carrosCollectionView.dataSource = self
        
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carrosArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "carroCollectionView", for: indexPath) as? CarroCollectionViewCell {
            cell.configure(with: carrosArray[indexPath.row])
        return cell
    }
        return UICollectionViewCell()

    }
}


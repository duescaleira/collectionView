//
//  CarroCollectionViewCell.swift
//  desafioCollectionView
//
//  Created by Eduardo Escaleira on 01/09/21.
//

import UIKit

class CarroCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var carrosImageView: UIImageView?
    
    public func configure(with carro: String) {
        carrosImageView?.image = UIImage(named: carro)
    }
    
}

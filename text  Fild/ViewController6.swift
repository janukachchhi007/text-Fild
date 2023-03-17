//
//  ViewController6.swift
//  text  Fild
//
//  Created by R94 on 04/02/23.
//

import UIKit

class ViewController6: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    var image = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),UIImage(named: "11")]
    var name = ["capsicum pizza","cheesic pizza","tometo pizza","garlic pizza","mix pizza","margerita pizza","veggie pizza","tometo mix pizza","heart pizza","pepperoni pizza"]

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var exploreMenuLabel: UILabel!
    @IBOutlet weak var imgOffer: UIImageView!
    @IBOutlet weak var classicPizzaLabel: UILabel!
    @IBOutlet weak var imgSearch: UIImageView!
    @IBOutlet weak var TextFild1: UITextField!
    @IBOutlet weak var imgLogo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell1
        cell.img.image = image[indexPath.row]
        cell.label1.text = name[indexPath.row]
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize (width: 250, height: 250)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let n = storyboard?.instantiateViewController(withIdentifier: "viewcontroller7") as! ViewController7
        navigationController?.pushViewController(n, animated: true)
    }

}

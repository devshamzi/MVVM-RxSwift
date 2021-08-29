//
//  HomeTableViewCell.swift
//  Shisheo
//
//  Created by Shamzi on 29/08/2021.
//

import UIKit
import SDWebImage

class HomeTableViewCell: CustomTableViewCell, ReusableView {


    @IBOutlet weak var restImageView: UIImageView!{
        didSet{
            restImageView.isUserInteractionEnabled = true
            restImageView.layer.cornerRadius = 8
            
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideOrShowStar))
            restImageView.addGestureRecognizer(tapGesture)
        }
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var starStackView: UIStackView!{
        didSet{
            starStackView.isHidden = true
        }
    }
    
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!{
        didSet{
            priceLabel.text = "Delivery: AED 10"
        }
    }
    @IBOutlet weak var discountLabel: UILabel!

    var model : HomeModel?{
        didSet{
            setData()
        }
    }
    
    func setData(){
        
        if let imageUrl = URL(string: self.model?.image_url ?? ""){
            self.restImageView.sd_setImage(with: imageUrl, completed: nil)
        }
        self.titleLabel.text = self.model?.name
        self.descLabel.text = self.model?.description
        self.discountLabel.text = self.model?.offer
    }
    
    @objc func hideOrShowStar() {
        starStackView.isHidden = !starStackView.isHidden
    }
}

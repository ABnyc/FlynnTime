//
//  FlynnCell.swift
//  FlynnTime
//
//  Created by Arpita Bhatia on 8/4/16.
//  Copyright © 2016 Arpita Bhatia. All rights reserved.
//

import UIKit

class FlynnCell: UITableViewCell {
    
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var mainLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        mainImg.layer.cornerRadius = 5.0
        mainImg.clipsToBounds = true
        mainLbl.layer.cornerRadius = 5.0
        mainLbl.clipsToBounds = true
        
    }
    
    func configureCell(image: UIImage, text:String) {
        mainImg.image = image
        mainLbl.text = text
        
        
    }

   

}

//
//  CustomCollectionCell.swift
//  MemoApplication
//
//  Created by 이준수 on 2020/02/13.
//  Copyright © 2020 이준수. All rights reserved.
//

import UIKit
import Then


class ImageCollectionCell: UICollectionViewCell {

    
    let userImageView = UIImageView().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleAspectFit
        $0.layer.cornerRadius = 12
        $0.clipsToBounds = true
        
    }
    
    // Mark: Initialize
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
   
        contentView.addSubview(userImageView)
        
        userImageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        userImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        userImageView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        userImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true

//        self.userImageView.frame = self.bounds
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

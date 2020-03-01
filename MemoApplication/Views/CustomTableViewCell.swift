//
//  CustomTableViewCell.swift
//  MemoApplication
//
//  Created by 이준수 on 2020/02/12.
//  Copyright © 2020 이준수. All rights reserved.
//

import UIKit
import Then

class CustomTableViewCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(memoThumbnailView)
        self.contentView.addSubview(memoTitleLabel)
        self.contentView.addSubview(memoMainTextPart)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: UI
    
    let memoThumbnailView = UIImageView().then {
        $0.image = UIImage(named:)
    }
    
    let memoTitleLabel = UILabel()
    
    let memoMainTextPart = UILabel()
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.memoTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20)
        self.memoTitleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20)
        // 높이, 넓이
        
        self.memoMainTextPart.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20)
        self.memoMainTextPart.topAnchor.constraint(equalTo: memoTitleLabel.bottomAnchor, constant: 20)
        self.memoMainTextPart.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 20)
        
        self.memoThumbnailView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20)
        
    }

}

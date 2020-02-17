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
        self.contentView.addSubview(memoMainTextPartLabel)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    let memoThumbnailView = UIImageView()
    
    let memoTitleLabel = UILabel()
    
    let memoMainTextPartLabel = UILabel()
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        
    }

}

//
//  MemoMainTextView.swift
//  MemoApplication
//
//  Created by 이준수 on 2020/02/19.
//  Copyright © 2020 이준수. All rights reserved.
//

import UIKit

import Then

class MemoMainTextView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.addSubview(mainTextView)
        self.mainTextView.delegate = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let mainTextView = UITextView().then {
        
        $0.adjustsFontForContentSizeCategory = true
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.mainTextView.frame = self.bounds
    }
    
}

extension MemoMainTextView: UITextViewDelegate {
    
    
}

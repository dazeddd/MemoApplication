//
//  MemoTitleLabel.swift
//  MemoApplication
//
//  Created by 이준수 on 2020/02/19.
//  Copyright © 2020 이준수. All rights reserved.
//

import UIKit
import Then

class MemoTitleField: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.addSubview(titleField)
        self.titleField.delegate = self
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let titleField = UITextField().then {
        $0.adjustsFontSizeToFitWidth = true
        $0.borderStyle = .line
    }
    
    override func layoutSubviews() {
        
        self.titleField.frame = self.bounds
    }
    
}

extension MemoTitleField: UITextFieldDelegate {
    
}

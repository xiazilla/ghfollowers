//
//  GFBodyLabel.swift
//  ghfollowers
//
//  Created by Jamie Xia on 6/25/20.
//  Copyright © 2020 cs378. All rights reserved.
//

import UIKit

class GFBodyLabel: UILabel {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
     }
        */

        override init(frame: CGRect) {
            super.init(frame: frame)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        init(textAlignment: NSTextAlignment) {
            super.init(frame: .zero)
            self.textAlignment = textAlignment
            configure()
        }
        
        private func configure() {
            textColor = .secondaryLabel
            font = UIFont.preferredFont(forTextStyle: .body)
            adjustsFontSizeToFitWidth = true
            minimumScaleFactor = 0.75
            lineBreakMode = .byWordWrapping
            translatesAutoresizingMaskIntoConstraints = false
        }
}

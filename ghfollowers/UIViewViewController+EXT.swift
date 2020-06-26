//
//  UIViewViewController+EXT.swift
//  ghfollowers
//
//  Created by Jamie Xia on 6/25/20.
//  Copyright © 2020 cs378. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentGFAlertOnMainThread(title:String, message:String, buttonTitle:String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(alertTitle: title, messageTitle: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}

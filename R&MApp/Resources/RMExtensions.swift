//
//  RMExtensions.swift
//  R&MApp
//
//  Created by Mac on 12/07/2023.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
}

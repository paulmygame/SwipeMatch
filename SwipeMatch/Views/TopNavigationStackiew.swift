//
//  TopNavigationStackiew.swift
//  SwipeMatch
//
//  Created by Paul Eduard Lapiceros on 4/30/24.
//

import UIKit

class TopNavigationStackiew: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
                
        distribution = .fillEqually
        heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        // top row of buttons
        
        let buttons = [UIImage(named: "btn_prof_img"), UIImage(named: "btn_fire_img"), UIImage(named: "btn_chat_img")].map { (img) -> UIView in
            let button = UIButton(type: .system)
            button.setImage(img?.withRenderingMode(.alwaysOriginal), for: .normal)
            return button
        }
        
        buttons.forEach { (v) in
            addArrangedSubview(v)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError( )
    }
    
}

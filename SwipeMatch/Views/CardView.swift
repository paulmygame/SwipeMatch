//
//  CardView.swift
//  SwipeMatch
//
//  Created by Paul Eduard Lapiceros on 5/5/24.
//

import UIKit

class CardView: UIView {
    
    fileprivate let imageView = UIImageView(image: UIImage(named: "sample_girl_img"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        // custome drawing code
        
        layer.cornerRadius = 10
        clipsToBounds = true
        addSubview(imageView)
        imageView.fillSuperview()
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
        addGestureRecognizer(panGesture)
    }
    
    @objc fileprivate func handlePan(gesture: UIPanGestureRecognizer) {
        switch gesture.state   {
        case .changed:
            handledChanged(gesture)
        case .ended:
            handledEnded()
        default:
            ()
        }
    }
    
    fileprivate func handledChanged(_ gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: nil)
        // Rotation
        let degrees: CGFloat = translation.x / 20
        let angle = degrees * .pi / 180
        
        let rotationalTransformation = CGAffineTransform(rotationAngle: angle)
        self.transform = rotationalTransformation.translatedBy(x: translation.x, y: translation.y )
    }
    
    fileprivate func handledEnded() {
        let shouldDismissCard = true
        
        UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.1, animations: {
            if shouldDismissCard {
                let offScreenTransform = self.transform.translatedBy(x: 1000, y: 0)
                self.transform = offScreenTransform
            } else {
                self.transform = .identity
            }
                
        }) { (_) in
            self.transform = .identity
        }
    }
     
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

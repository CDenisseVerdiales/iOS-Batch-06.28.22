//
//  UIViewE.swift
//  Pokemon
//
//  Created by Consultant on 7/16/22.
//
import UIKit


extension UIStackView {
    
    // types of inits
    
    // Default inits
    // Convenience inits
    // Failable init
    
    
    convenience init(axis: NSLayoutConstraint.Axis, spacing: CGFloat, distribution: Distribution) {
        self.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.axis = axis
        self.spacing = spacing
        self.distribution = distribution
    }
    
    
    
    
}

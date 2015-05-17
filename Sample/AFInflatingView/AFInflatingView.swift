//
//  AFInflatingView.swift
//  AFInflatingView
//
//  Created by Adrián Ferreyra on 5/16/15.
//  Copyright (c) 2015 Adrián Ferreyra. All rights reserved.
//

import UIKit

class AFInflatingView: UIView {

    private var innerView : UIView? = nil {
        didSet {
            oldValue?.removeFromSuperview()
            
            innerView!.setTranslatesAutoresizingMaskIntoConstraints(false)
            
            self.addSubview(innerView!)
            
            self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[v]|", options:NSLayoutFormatOptions(0), metrics: nil, views: ["v":innerView!]))
            self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[v]|", options:NSLayoutFormatOptions(0), metrics: nil, views: ["v":innerView!]))
        }
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.inflate(innerView: nil)
    }
    
    func inflate(innerView v: UIView?) {
        
        if let newView = v {
            innerView = newView
            
        } else {
            innerView = UIView()

            innerView!.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[v(0)]", options: NSLayoutFormatOptions(0), metrics: nil, views: ["v":innerView!]))
            
        }
        
    }

}

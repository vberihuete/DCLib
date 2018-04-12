//
//  ViewExtensions.swift
//  DClib
//
//  Created by Vincent Berihuete on 4/10/18.
//  Copyright © 2018 devcore. All rights reserved.
//

import UIKit

extension UIView{
    
    /// This functions shakes a view for 0.4 seconds
    /// - Parameter view: The view to be shaked
    func shake(){
        let view = self
        UIView.animate(withDuration: 0.1, delay: 0, options: [], animations: {
            view.center.x -= 8
        }) { (completed) in
            
            UIView.animate(withDuration: 0.1, delay: 0, options: [], animations: {
                view.center.x += 16
            }) { (completed) in
                UIView.animate(withDuration: 0.1, delay: 0, options: [], animations: {
                    view.center.x -= 16
                }) { (completed) in
                    UIView.animate(withDuration: 0.1, delay: 0, options: [], animations: {
                        view.center.x += 8
                    }, completion: nil)
                }
            }
        }
    }
    
}

//
//  LoadingView.swift
//  AnimationLibrary
//
//  Created by GK on 2018/12/28.
//  Copyright © 2018年 com.gk. All rights reserved.
//

import UIKit

class LoadingView: UIView {
    
    var overlayView: UIView!
    public var colorBackground:UIColor = UIColor.white
    
    public var duration:Double = 3

    public func show(view:UIView?, color: UIColor = UIColor.red) {
        self.frame = view!.frame
        self.backgroundColor = UIColor.clear
        
        overlayView = UIView()
        overlayView.frame = view!.frame
        overlayView.backgroundColor = colorBackground
        
        let size: CGFloat = 90
        let lineWidth: CGFloat = 3
        
        let loading = LoadingCycle(frame: CGRect(x: view!.center.x - (size/2), y: view!.center.y - (size/2), width: size, height: size))
        loading.duration = duration
        loading.lineWidth = lineWidth
        loading.setup(color: color)
        overlayView.addSubview(loading)
        
        view!.addSubview(overlayView)
    }
    
    public func hide() {
        if overlayView != nil {
            overlayView.removeFromSuperview()
        }
    }
    public func setColorBackground(color:UIColor){
        colorBackground = color
    }
}

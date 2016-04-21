//
//  ToastMessage.swift
//  SwiftDemo
//
//  Created by Gurpreet on 30/12/15.
//  Copyright © 2015 ameba. All rights reserved.
//

import UIKit

//MARK: Local Properties
var toastView:UIView!
var toastText:UILabel!

public class ToastMessage: UIView {

    public func toastMessage (view:UIView, text: String) {

        loadingView = UIView(frame: CGRectMake(50, view.frame.height-80, view.frame.width-100, 30))
        loadingView.backgroundColor = UIColor.blackColor()
        loadingView.alpha = 0.5
        loadingView.layer.cornerRadius = 5
        
        toastText = UILabel (frame: CGRectMake(0, 0, loadingView.frame.width, loadingView.frame.height))
        toastText.text = text
        toastText.textAlignment = NSTextAlignment.Center
        toastText.textColor = UIColor.whiteColor()
        
        loadingView.addSubview(toastText)
        view.addSubview(loadingView)
        
        let dispatchTime: dispatch_time_t = dispatch_time(DISPATCH_TIME_NOW, Int64(0.5 * Double(NSEC_PER_SEC)))
        dispatch_after(dispatchTime, dispatch_get_main_queue(), {
            // your function here
            loadingView.removeFromSuperview()
        })
    }
}

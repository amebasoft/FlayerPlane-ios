//
//  Loader.swift
//  SwiftDemo
//
//  Created by Gurpreet on 29/12/15.
//  Copyright © 2015 ameba. All rights reserved.
//

import UIKit

//MARK: Local Properties
var loadingView:UIView!
var activityIndicator:UIActivityIndicatorView!
var lbl_Text:UILabel!

public class Loader: UIView {
    
    public func loadLoader(view:UIView,text:String) {
        loadingView = UIView (frame: CGRectMake(view.frame.width/2-50, view.frame.height/2-40, 100, 80))
        loadingView.backgroundColor = UIColor.blackColor()
        loadingView.alpha = 0.5
        loadingView.layer.cornerRadius = 5
        
        activityIndicator = UIActivityIndicatorView(frame: CGRectMake(loadingView.frame.width/2-30, 0, 60, 60))
        activityIndicator.backgroundColor = UIColor.clearColor()
        activityIndicator.startAnimating()
        
        lbl_Text = UILabel (frame: CGRectMake(0, 50, loadingView.frame.width, 20))
        lbl_Text.textAlignment = NSTextAlignment.Center
        lbl_Text.text = text
        lbl_Text.textColor = UIColor.whiteColor()
        lbl_Text.font = UIFont.systemFontOfSize(13.0)
        
        loadingView.addSubview(activityIndicator)
        loadingView.addSubview(lbl_Text)
        view.addSubview(loadingView)
    }
    
    public func removeLoader() {
        loadingView.removeFromSuperview()
    }
}

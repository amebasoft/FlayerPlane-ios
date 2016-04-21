//
//  Home.swift
//  FlyerPlane
//
//  Created by Vishal Gupta on 02/03/16.
//  Copyright © 2016 Vishal Gupta. All rights reserved.
//

import UIKit

class Home: UIViewController {
    
    //MARK: - IBOutlet Properties
    @IBOutlet var swiftPagesView: SwiftPages!
    @IBOutlet weak var navigationBar:UINavigationBar!
    @IBOutlet weak var menuButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.hidden = true
        let image = UIImage(named: "LogoImagePlaceholder")
        navigationBar.setBackgroundImage(image,forBarMetrics: .Default)
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.revealViewController().rearViewRevealWidth = self.view.frame.size.width/2+50
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
        
        automaticallyAdjustsScrollViewInsets = false
        
        // Initiation
        let VCIDs = ["ID_UpcomingEvent", "ID_PastEvent", "Friend List"]
        let buttonImages = [
            UIImage(named:"MenuButton")!,
            UIImage(named:"MenuButton")!,
            UIImage(named:"MenuButton")!
        ]
        
        swiftPagesView = SwiftPages(frame: CGRectMake(0, 0, self.view.frame.width, self.view.frame.height))
        self.view.addSubview(swiftPagesView)
        
        // Sample customization
        swiftPagesView.initializeWithVCIDsArrayAndButtonImagesArray(VCIDs, buttonImagesArray: buttonImages)
        swiftPagesView.setTopBarBackground(UIColor(red: 244/255, green: 164/255, blue: 96/255, alpha: 1.0))
        swiftPagesView.setAnimatedBarColor(UIColor(red: 255/255, green: 250/255, blue: 205/255, alpha: 1.0))
        
        swiftPagesView.enableAeroEffectInTopBar(true)
        swiftPagesView.setButtonsTextColor(UIColor.whiteColor())
        swiftPagesView.setAnimatedBarColor(UIColor.whiteColor())
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

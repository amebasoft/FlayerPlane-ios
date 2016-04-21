//
//  Settings.swift
//  FlyerPlane
//
//  Created by Vishal Gupta on 09/03/16.
//  Copyright © 2016 Vishal Gupta. All rights reserved.
//

import UIKit

class Settings: UIViewController {
    
    //MARK: - IBOutlet Properties
    @IBOutlet weak var navigationBar: UINavigationBar!
    @IBOutlet weak var menuButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Set UINavigationBar Background Image
        let image = UIImage(named: "LogoImagePlaceholder")
        navigationBar.setBackgroundImage(image,forBarMetrics: .Default)
        navigationBar.translucent = false
        
        //SWRevealViewController
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.revealViewController().rearViewRevealWidth = self.view.frame.size.width/2+50
            self.revealViewController().rearViewRevealOverdraw = 0.0; // how much of an overdraw can occur when dragging further than 'rearViewRevealWidth' (default 60.0)
            self.revealViewController().bounceBackOnOverdraw = false;
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - IBAction Method
    @IBAction func actionMethod(sender:UIButton) {
        switch sender.tag {
        case 0:
            print("")
        case 1:
            print("")
        case 2:
            self.performSegueWithIdentifier("Se_PrivacyPolicy", sender: self)
        case 3:
            self.performSegueWithIdentifier("Se_TermsOfUse", sender: self)
        case 4:
            print("")
        default:
            print("")
        }
    }
}

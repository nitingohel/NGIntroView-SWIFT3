//
//  ViewController.swift
//  NGIntroView-SWIFT3
//
//  Created by Nitin Gohel on 28/02/17.
//  Copyright © 2017 Nitin Gohel. All rights reserved.
//

import UIKit
import EAIntroView
class ViewController: UIViewController,EAIntroDelegate {
    @IBOutlet var btnShowMe: UIButton!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func LoadIntro(_ sender: UIButton) {
        
        let ingropage1 = EAIntroPage.init(customViewFromNibNamed: "page1")
        let ingropage2 = EAIntroPage.init(customViewFromNibNamed: "page2")
        let ingropage3 = EAIntroPage.init(customViewFromNibNamed: "page3")
        let ingropage4 = EAIntroPage.init(customViewFromNibNamed: "page4")
        let ingropage5 = EAIntroPage.init(customViewFromNibNamed: "page5")
        
       
        let introView = EAIntroView.init(frame: self.view.bounds, andPages: [ingropage1!,ingropage2!,ingropage3!,ingropage4!,ingropage5!])
        introView?.delegate = self
        
        introView?.show(in: self.view)
    }

    func introDidFinish(_ introView: EAIntroView!, wasSkipped: Bool) {
        if(wasSkipped) {
            
            print("Intro skipped")
    
        } else {
            
            print("Intro skipped")
        }
    }
    
    
}


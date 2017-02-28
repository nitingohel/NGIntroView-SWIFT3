# NGIntroView-SWIFT3
NGIntroView is a Swift- 3 Demo by using EAIntroView cocoapods Following is a steps are how to making IntroView in Swift-3 by using EAIntroView


# Add EAIntroView In your Project.

1. Open terminal and CD to your project directory
2. Run Command pod Init
3. add pod 'EAIntroView', '~> 2.10.0' in to your podfile and save it
4. Run command pod install

# Add Code to present Introview.

1. Create XIB files that you want to add pages
2. import EAIntroView in to your viewcontroller.swift
3. Do following code
4. Add EAIntroDelegate
```objective-c
        let ingropage1 = EAIntroPage.init(customViewFromNibNamed: "page1")
        let ingropage2 = EAIntroPage.init(customViewFromNibNamed: "page2")
        let ingropage3 = EAIntroPage.init(customViewFromNibNamed: "page3")
        let ingropage4 = EAIntroPage.init(customViewFromNibNamed: "page4")
        let ingropage5 = EAIntroPage.init(customViewFromNibNamed: "page5")
        
       
        let introView = EAIntroView.init(frame: self.view.bounds, andPages: [ingropage1!,ingropage2!,ingropage3!,ingropage4!,ingropage5!])
        introView?.delegate = self
        
        introView?.show(in: self.view)
        
        
        func introDidFinish(_ introView: EAIntroView!, wasSkipped: Bool) {
        if(wasSkipped) {
            
            print("Intro skipped")
    
        } else {
            
            print("Intro skipped")
        }
    }
```

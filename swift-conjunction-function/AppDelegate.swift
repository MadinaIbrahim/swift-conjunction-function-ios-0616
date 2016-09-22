//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let sandBox = Sandbox()
        
        let testConjunction = sandBox.listWithElements(["one", "two"], conjunction: "&")
        print("test conjunction: \(testConjunction) (blank is valid)")
        
        let greaterThanThreeElement = sandBox.listWithElements(["one", "two", "three", "four", "five"], conjunction: "or")
        print(greaterThanThreeElement)
        //one,two,three,four, or five
        
        let twoElements = sandBox.listWithElements(["hi","madina"], conjunction: "and")
        print(twoElements)
        //hi and madina
        
        let oneElement = sandBox.listWithElements(["hi"], conjunction: nil)
        print(oneElement)
        //hi
        
        return true
    }
}


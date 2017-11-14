//
//  MapViewController.swift
//  SwiftNotificationCenter
//
//  Created by knax on 11/13/17.
//  Copyright © 2017 StepwiseDesigns. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {

   //IBActions w/show segues do no display notification label results, tabView buttons do
    //both print out to the console 
    @IBAction func notificationButtonAction01(_ sender: AnyObject) {
        //add notification center and broadcast notification msg
        RefreshNotification = "\(sender.tag!)"
        print("sender from01")
        
        NotificationCenter.default.post(name: VIDEO_TMBNAIL01, object: nil)
    }
    
    @IBAction func NotificationButtonAction02(_ sender: AnyObject) {
        RefreshNotification = "\(sender.tag!)"
        print("sender from02")
        NotificationCenter.default.post(name: VIDEO_TMBNAIL02, object: nil)
    }
    
    @IBAction func NotificationButtonAction03(_ sender: AnyObject) {
        RefreshNotification = "\(sender.tag!)"
        print("sender from03")
        NotificationCenter.default.post(name: VIDEO_TMBNAIL03, object: nil)
    }
    
    @IBAction func NotificationButtonAction04(_ sender: Any) {
        
        NotificationCenter.default.post(name: Notification.Name(VIDEO_TMBNAIL04.rawValue), object: self)
         print("sender from04")
        
    }
    
    
}

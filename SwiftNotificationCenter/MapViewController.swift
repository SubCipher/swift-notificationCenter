//
//  MapViewController.swift
//  SwiftNotificationCenter
//
//  Created by knax on 11/13/17.
//  Copyright © 2017 StepwiseDesigns. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {

   
    @IBAction func notificationButtonAction(_ sender: Any) {
        //add notification center and broadcast notification msg
        NotificationCenter.default.post(name: REFRESH_NOTIFICATION, object: nil)
    }
    
    
}

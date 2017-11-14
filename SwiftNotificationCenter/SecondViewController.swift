//
//  SecondViewController.swift
//  SwiftNotificationCenter
//
//  Created by knax on 11/13/17.
//  Copyright © 2017 StepwiseDesigns. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var notificationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //add an observer to listen for notification broadcast
        NotificationCenter.default.addObserver(forName: REFRESH_NOTIFICATION, object: nil, queue: nil) { notification in
            
            //if notification is recieved run this block:
            print("notification \(notification)")
            self.notificationLabel.isHidden = false
        }
    }

}

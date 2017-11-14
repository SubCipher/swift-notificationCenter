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

        NotificationCenter.default.addObserver(forName: REFRESH_NOTIFICATION, object: nil, queue: nil) { notification in
            print("notification \(notification)")
            self.notificationLabel.isHidden = false
        }
    }

   

}

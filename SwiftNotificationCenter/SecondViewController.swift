//
//  SecondViewController.swift
//  SwiftNotificationCenter
//
//  Created by knax on 11/13/17.
//  Copyright © 2017 StepwiseDesigns. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var notificationLabel01: UILabel!
    
    @IBOutlet weak var notificationLabel02: UILabel!
    
    @IBOutlet weak var notificationLabel03: UILabel!
    
    @IBOutlet weak var notificationLabel04: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     callNotificationOne()

    }
  
    
    func callNotificationOne(){
        //add an observer to listen for notification broadcast
        NotificationCenter.default.addObserver(forName: VIDEO_TMBNAIL01, object: nil, queue: nil) { notification in
            
            //if notification is recieved run this block:
            print("notification \(notification)")
            self.notificationLabel01.isHidden = false
        }
        
        
        NotificationCenter.default.addObserver(forName: VIDEO_TMBNAIL02, object: nil, queue: nil) { notification in
            print("notification \(notification)")
            DispatchQueue.main.async {
                 self.notificationLabel02.isHidden = false
            }
           
        }
        
        NotificationCenter.default.addObserver(forName: VIDEO_TMBNAIL03, object: nil, queue: nil) { notification in
            print("notification \(notification)")
            self.notificationLabel03.isHidden = false
        }
        
        NotificationCenter.default.addObserver(self, selector: #selector(genImageForVideo4), name: Notification.Name("genImageForVideo4"), object: self)
        
        
    }
    
    @objc func genImageForVideo4(){
        
        self.notificationLabel04.isHidden = false
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

}

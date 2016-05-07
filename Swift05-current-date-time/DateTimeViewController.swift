//
//  DateTimeViewController.swift
//  Swift05-current-date-time
//
//  Created by shinwood on 5/8/16.
//  Copyright © 2016 guox.in. All rights reserved.
//

import UIKit

class DateTimeViewController: UIViewController {
    
    var dateComponent = NSDateComponents()
    var dateFormatter = NSDateFormatter()
    var timestamp:NSDate = NSDate() {
        didSet{
            currentDate.text = dateFormatter.stringFromDate(timestamp)
        }
    }
    
    @IBOutlet weak var currentDate: UILabel!
    
    @IBAction func updateDate(sender: UIButton) {
        timestamp = NSDate()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        timestamp = NSDate()
        currentDate.text = dateFormatter.stringFromDate(timestamp)
    }
    
    
}

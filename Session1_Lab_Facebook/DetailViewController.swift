//
//  DetailViewController.swift
//  Session1_Lab_Facebook
//
//  Created by Salyards, Adey on 10/28/15.
//  Copyright © 2015 Salyards, Adey. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailScroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailScroll.contentSize = CGSize(width: 320, height: 1000)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

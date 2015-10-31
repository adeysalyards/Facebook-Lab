//
//  DetailViewController.swift
//  Session1_Lab_Facebook
//
//  Created by Salyards, Adey on 10/28/15.
//  Copyright © 2015 Salyards, Adey. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var commentTextField: UITextField!
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailScroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         detailScroll.contentSize = detailImageView.image!.size
        
         NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardNotification:", name: UIKeyboardWillShowNotification, object: nil)
        
        // Do any additional setup after loading the view.
    }
    
    func keyboardNotification(notification: NSNotification){
        UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            () -> Void in
            self.commentTextField.frame = CGRectMake((self.commentTextField.frame.origin.x), (self.commentTextField.frame.origin.y) - 180, (self.commentTextField.frame.size.width), (self.commentTextField.frame.size.height))
            }, completion: nil)
    }
    
    @IBAction func backButton(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func likeButton(sender: UIButton) {
        sender.selected = true
    }
    
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
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

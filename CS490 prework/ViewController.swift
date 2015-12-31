//
//  ViewController.swift
//  CS490 prework
//
//  Created by Shijin Wang on 15/12/19.
//  Copyright (c) 2015年 Alan. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    

    @IBOutlet weak var tipcontrol: UISegmentedControl!
    @IBOutlet weak var billfield: UITextField!
    @IBOutlet weak var tiplabel: UILabel!
    @IBOutlet weak var totallabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!//for animation
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tiplabel.text = "$0.00"
        totallabel.text = "$0.00"
        
        //var imagesnames = ["dollar sign.jpg"] // replace with animated jpg to create animation
        //var images = [UIImage]()
        
        //for i in 0..<imagesnames.count{
            //images.append(UIImage(named: imagesnames[i])!)
       
            
            
            //imageView.animationImages = images
            
           // imageView.animationDuration = 0.5
            
            //imageView.startAnimating()
        
            //imageView.stopAnimating()
            
            
        // UIView.animateWithDuration(1.0,delay: 0.0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
                //self.imageView.alpha = 1
              //  }, completion: {
                   // (Completed : Bool) -> Void in

            
         //   })
        
 
       // }
        
        
        
    
        }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
   

    @IBAction func editingchange(sender: AnyObject) {
       
        var percentage = [0.15, 0.2, 0.25]
        var tippercentage = percentage[tipcontrol.selectedSegmentIndex]
        
        var billamount = NSString(string: billfield.text!).doubleValue
        var tip = billamount * tippercentage
        var total = billamount + tip

        tiplabel.text = String(format: "$%.2f",tip)
        totallabel.text = String(format: "$%.2f", total)
        
        
        
        
    }

    @IBAction func ontap(sender: AnyObject){
        
        self.view.endEditing(true)
        
    }

}


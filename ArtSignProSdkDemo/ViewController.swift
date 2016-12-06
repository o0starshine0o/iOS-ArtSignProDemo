//
//  ViewController.swift
//  ArtSignProSdkDemo
//
//  Created by AbelHu on 2016/11/14.
//  Copyright © 2016年 qicode. All rights reserved.
//

import UIKit
import ArtSignProSdk

class ViewController: UIViewController, ArtSignProSdkDelegate {
    var isShowSdk:Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.artSignPro?.isShowSdk(delegate: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onClick(_ sender: UIButton) {
        if isShowSdk {
            performSegue(withIdentifier: "ShowExpertSignList", sender: self)
        }else{
            print("set pay method for this production before show expert sign list")
        }
    }
    
    func isShowSdk(show:Bool){
        isShowSdk = show
    }

}


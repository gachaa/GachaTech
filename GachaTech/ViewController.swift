//
//  ViewController.swift
//  GachaTech
//
//  Created by 前本英里香 on 2017/03/28.
//  Copyright © 2017年 None. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gacha(){
        self.performSegue(withIdentifier: "result", sender: nil)
    }


}


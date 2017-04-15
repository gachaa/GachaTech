//
//  ResultViewController.swift
//  GachaTech
//
//  Created by 前本英里香 on 2017/03/28.
//  Copyright © 2017年 None. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let number = Int(arc4random_uniform(10))
        monsterArray = [UIImage(named: "monster001")!,
                        UIImage(named: "monster002")!,
                        UIImage(named: "monster003")!,
                        UIImage(named: "monster004")!,
                        UIImage(named: "monster005")!,
                        UIImage(named: "monster006")!,
                        UIImage(named: "monster007")!,
                        UIImage(named: "monster008")!,
                        UIImage(named: "monster009")!,
                        UIImage(named: "monster010")!]
        monsterImageView.image = monsterArray[number]
        
        if number == 9{
            haikeiImageView.image = UIImage(named: "bg_gold.png")
        }else if number > 6{
            haikeiImageView.image = UIImage(named: "bg_red.png")
        }else{
            haikeiImageView.image = UIImage(named: "bg_blue.png")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let animation = CABasicAnimation(keyPath: "transform")
        animation.fromValue = 0.0
        animation.toValue = 2 * M_PI
        animation.valueFunction = CAValueFunction(name: kCAValueFunctionRotateZ)
        animation.duration = 5.0
        animation.repeatCount = Float.infinity
        haikeiImageView.layer.add(animation, forKey: nil)
    }
    
    @IBOutlet var haikeiImageView: UIImageView!
    
    @IBOutlet var monsterImageView: UIImageView!
    
    var monsterArray: [UIImage]!
    
    @IBAction func modoru(){
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.swift
//  Swift for Manga
//
//  Created by 矢部立也 on 2018/01/20.
//  Copyright © 2018年 矢部立也. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var countLabel: UILabel!
    
    @IBOutlet var runnerImageView: UIImageView!
    
    var imageArray=[UIImage]()
    
    var Timer1=Timer()
    
    var countUp=0
    
    var Timer2=Timer()
    
    var updateCount=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text="0"
        let Image0=UIImage(named: "dash0.pmg")
        let Image1=UIImage(named: "dash1.pmg")
        let Image2=UIImage(named: "dash2.pmg")
        let Image3=UIImage(named: "dash3.pmg")
        let Image4=UIImage(named: "dash4.pmg")
        let Image5=UIImage(named: "dash5.pmg")
        
      imageArray =
        [Image0!,Image1!,Image2!,Image3!,Image4!,Image5!]

    }
    
    @IBAction func Stop(_ sender: Any) {
        Timer1.invalidate()
        Timer2.invalidate()
    }
    
    @IBAction func Run(_ sender: Any) {
        Timer1=Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            self.countUp=self.countUp+1
            
            self.countLabel.text = String(self.countUp)
        })
        
        Timer2=Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { (timer) in
            
            if(self.updateCount>5){
                self.updateCount=0
                self.runnerImageView.image = UIImage(named: "dash0.png")
            }
            else{
                self.runnerImageView.image=self.imageArray[self.updateCount]
            }
            self.updateCount=self.updateCount+1
            
        })
        
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}


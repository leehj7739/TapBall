//
//  ViewController.swift
//  TapBall
//
//  Created by HeejunLee on 2016. 8. 1..
//  Copyright © 2016년 LKZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var block : UIView!
    var animator:UIDynamicAnimator? = nil;
    let gravity = UIGravityBehavior()
    
    func createAnimatorStuff() {
        animator = UIDynamicAnimator(referenceView:self.view);
        animator?.addBehavior(gravity)
        
        gravity.addItem(block);
        gravity.gravityDirection = CGVectorMake(0, 0.8)
        animator?.addBehavior(gravity);
        print(gravity.items.count)
    }
    
    
    @IBAction func makeBall(sender: AnyObject) {
        print("tap!")
        makeRedBlock()
        createAnimatorStuff()
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeRedBlock(){
        let newBlock = UIView(frame: CGRectMake(50,20,100,100))
        newBlock.backgroundColor = UIColor.redColor()
        self.view.addSubview(newBlock)
        
        block = newBlock
    }

}


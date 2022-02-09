//
//  ViewController.swift
//  XRSwift
//
//  Created by 朵朵 on 2022/1/11.
//

import UIKit

class ViewController: UIViewController {

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var someView : UIView
        
        someView = UIView.init(frame: CGRect(x: 100,y: 100,width: 100,height: 100))
        someView.backgroundColor = .red
        self.view.addSubview(someView)
        self.view.backgroundColor = .white
        
        
    }


}


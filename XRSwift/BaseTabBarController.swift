//
//  BaseTabBarController.swift
//  XRSwift
//
//  Created by ext.wangxiaoran3 on 2022/2/9.
//

import UIKit

class BaseTabBarController: UITabBarController {

    var array = Array<Dictionary<String, Any>>.init()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        self.tabBar.barTintColor = .cyan
        self.array = [["title":"A"],["title":"B"],["title":"C"],["title":"D"]]
        
        self.UI()
        
       
        
    }
    
    func UI() {
        for item in self.array {
            
            let vc = ViewController.init()
            
           
            let nav = BaseNavigationController.init(rootViewController: vc)
            
            nav.tabBarItem = UITabBarItem.init(title: (item["title"] as! String), image: nil, selectedImage: nil)
            nav.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont.systemFont(ofSize: 13),NSAttributedString.Key.foregroundColor : UIColor.white], for: .normal)
            nav.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont.systemFont(ofSize: 13),NSAttributedString.Key.foregroundColor : UIColor.red], for: .selected)
            self.addChild(nav)
            
            //print(item["title"])
        }
    
//        [viewController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor greenColor]} forState:UIControlStateSelected];
//        [viewController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor color69]} forState:UIControlStateNormal];
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

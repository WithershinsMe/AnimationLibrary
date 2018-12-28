//
//  ViewController.swift
//  AnimationLibrary
//
//  Created by GK on 2018/12/28.
//  Copyright © 2018年 com.gk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let loading = LoadingView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func didClickedCircleView(_ sender: UIButton) {
        
        
        loading.show(view: view,color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        
        self.perform(#selector(hide), with: nil, afterDelay: 5)
    }
    
    @objc func hide(){
        loading.hide()
    }
}


//
//  ViewController.swift
//  NKTestLibPrivacyLib
//
//  Created by Van Zhang on 03/15/2023.
//  Copyright (c) 2023 Van Zhang. All rights reserved.
//

import UIKit
import NKTestLibPrivacyLib

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let topBundlePath = Bundle.main.path(forResource: "NKTestLibPrivacyLibResources", ofType: "bundle")
        guard let nibBundlePath = topBundlePath else {
            return
        }
        let topBundle = Bundle(path: nibBundlePath)
        let tempVc = NKTempViewController(nibName: "NKTempViewController", bundle: topBundle)
        self.present(tempVc, animated: true) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: DispatchWorkItem(block: {
                tempVc.dismiss(animated: true)
            }))
        }
//        print((UIImage(contentsOfBundleName: "NKTestLibPrivacyLib", file: "images/0.jpg")) ?? "没有图片")
        print("bundlePath:\(Bundle.currentLibrary())")
        
    }

}


//
//  UIImage+Extensions.swift
//  NKTestLibPrivacyLib
//
//  Created by Van Zhang on 2023/3/16.
//

import UIKit

extension UIImage {
    public convenience init?(contentsOfBundleName bundleName: String,file: String){
        let _bundleName = bundleName.contains(".bundle") ? bundleName : bundleName.appending(".bundle")
        let bundle = Bundle.allBundles.first(where:{ $0.bundlePath.contains(_bundleName)})
        
        guard
            let resourceBundlePath = bundle?.path(forResource: "Resource", ofType: "bundle"),
            let bundle = Bundle(path: resourceBundlePath),
            let imagePath = bundle.path(forResource: file, ofType: nil)
        else {
            return nil
        }
        self.init(contentsOfFile: imagePath)
    }
}

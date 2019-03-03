//
//  ViewController.swift
//  SwiftScan
//
//  Created by Jason on 2018/11/29.
//  Copyright © 2018 Jason. All rights reserved.
//

import UIKit

import SwiftScanner

class ViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = ScannerVC()
        
        vc.setupScanner { (code) in
            
            //print(code)
            
            let  alert = UIAlertController(title: "扫码结果", message: code, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
                self.navigationController?.popViewController(animated: true)
            })
            
            alert.addAction(okAction)
            
            
            self.present(alert, animated: true, completion: nil)
            
            
        }
        
        navigationController?.pushViewController(vc, animated: true)
        
        
        
    }
    
}


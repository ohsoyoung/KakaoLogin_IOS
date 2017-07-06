//
//  ViewController.swift
//  Kakao
//
//  Created by 오소영 on 2017. 7. 4..
//  Copyright © 2017년 오소영. All rights reserved.
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

    @IBAction func loginKakao(_ sender: UIButton) {
        let session = KOSession.shared()
        
        //로그인 세션이 생성되었으면
        if let s = session {
            if s.isOpen() {
                s.close()
            }
            s.open(completionHandler: { (error) in
                
                if error == nil {
                    print("No error")
                    
                    if s.isOpen() {
                        print("Success")
                    }
                    else {
                        print("Fail")
                    }
                }
                else {
                    print("Error login: \(error!)")
                }
            
            })
        }
        //세션 생성 실패
        else {
            print("Something wrong")
        }
    }

}


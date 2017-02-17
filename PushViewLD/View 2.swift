//
//  View 2.swift
//  PushViewLD
//
//  Created by Linh&ShawnD on 2017-02-15.
//  Copyright © 2017 Shali Design. All rights reserved.
//

import UIKit

class View_2: UIViewController {
    
    @IBOutlet weak var tf_user: UITextField!
    
    @IBOutlet weak var tf_password: UITextField!
    
    var users = ["sophie":"123", "anna":"456", "julia":"789"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func action_login(_ sender: Any) {
        
        
        let V3 = self.storyboard?.instantiateViewController(withIdentifier: "V3") as! View_3
        
        self.navigationController?.pushViewController(V3, animated: true)

        if let password = users[tf_user.text!]
        {
            
            if password == tf_password.text
            {
                print("Dang Nhap Thanh Cong")
                
            }
                
            else
            {
                print("Mat Khau Khong Dung")
            }
        }
        else
        {
            print("Tài Khoản Không Tồn Tại")
        }
    }
        
    @IBAction func ActionPop(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

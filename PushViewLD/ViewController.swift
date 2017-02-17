//
//  ViewController.swift
//  PushViewLD
//
//  Created by Linh&ShawnD on 2017-02-15.
//  Copyright © 2017 Shali Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Logo: UIImageView!
    
    @IBOutlet weak var Text: UILabel!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        super.viewDidLoad()
        Logo!.alpha = 0
        Text!.alpha = 0
    }


    override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    UIView.animate(withDuration: 4, animations: {
        self.Logo!.alpha = 1
    }, completion: { (finished) in
        UIView.animate(withDuration: 3, animations: {
            self.Text!.center = CGPoint(x: self.Logo!.center.x, y: 100)
            self.Text!.alpha = 1
        })
    })
}


    @IBAction func ActionPush(_ sender: Any) {
        let V2 = self.storyboard?.instantiateViewController(withIdentifier: "V2") as! View_2
        
        self.navigationController?.pushViewController(V2, animated: true)
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


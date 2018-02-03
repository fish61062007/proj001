//
//  chooseSchool.swift
//  proj001
//
//  Created by utaipei on 2018/2/3.
//  Copyright © 2018年 utaipei. All rights reserved.
//

import UIKit

class chooseSchool: UIViewController{
    
    let dataNorth:[String] = ["01","02","03","04"]
    let dataMid = ["05","06","07","08"]
    
    
    @IBAction func backToChoose(segue: UIStoryboardSegue){
    }
    var title01:String = ""
    
    @IBOutlet weak var northButton: UIButton!
    @IBOutlet weak var midButton: UIButton!
    @IBOutlet weak var southButton: UIButton!
    @IBOutlet weak var eastButton: UIButton!

    @IBAction func chooseButton(_ sender: Any) {
        
        let rr = storyboard?.instantiateViewController(withIdentifier: "chooseSchool01") as! chooseSchool01


        if sender as? UIButton == northButton {
            rr.titleText = "北部"
            rr.data = dataNorth
        }
        if sender as? UIButton == midButton {
            rr.titleText = "中部"
            rr.data = dataMid
        }
        if sender as? UIButton == southButton {
            rr.titleText = "南部"
        }
        if sender as? UIButton == eastButton {
            rr.titleText = "東部"
        }

        self.present(rr, animated: true, completion: nil)
        

        
    }
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

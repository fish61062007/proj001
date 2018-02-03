//
//  chooseSchool01.swift
//  proj001
//
//  Created by utaipei on 2018/2/3.
//  Copyright © 2018年 utaipei. All rights reserved.
//

import UIKit

class chooseSchool01: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    var titleText: String?
    
    let data1 = ["school01","school02","school03","school04"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data1.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data1[row]
    }
    
    
    
    
    @IBOutlet weak var titlee: UILabel!
    
    
    
    @IBOutlet weak var schools: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titlee.text = titleText
        
        

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

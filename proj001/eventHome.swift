//
//  eventHome.swift
//  proj001
//
//  Created by utaipei on 2018/2/4.
//  Copyright © 2018年 utaipei. All rights reserved.
//

import UIKit

class eventHome: UIViewController, UITableViewDelegate, UITableViewDataSource, UIPickerViewDelegate, UIPickerViewDataSource {
    

    

    
    @IBOutlet weak var categoryPicker: UIPickerView!
    let categoryData = ["推薦","收藏","追蹤"]
    
    //PickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return categoryData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return categoryData[row]
    }
    
    //
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "MyCell")
        if cell == nil {
            cell = UITableViewCell(style: .default,reuseIdentifier: "MyCell")
        }
        
        return cell!
    }
    
//    var rotationAngle:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        rotationAngle = 90 * (.pi/180)
//        categoryPicker.transform = CGAffineTransform(rotationAngle: rotationAngle)

       
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

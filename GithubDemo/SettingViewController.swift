//
//  SettingViewController.swift
//  GithubDemo
//
//  Created by Hugo Nguyen on 2/10/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

protocol SettingsDelegate: class {
    func settingsPicker(picker: SettingViewController, didPickStars stars:Int?)
    //func initialColor() -> UIColor?
}

class SettingViewController: UITableViewController {
    
    weak var delegate: SettingsDelegate?
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var minStartSlider: UISlider!
    @IBOutlet weak var startCount: UILabel!
    
    @IBAction func saveButtonTapped(sender: UIButton) {
        delegate?.settingsPicker(self, didPickStars: Int(minStartSlider.value))
    }
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        startCount.text = "\(Int(sender.value))"
        
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

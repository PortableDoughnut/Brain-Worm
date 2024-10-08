//
//  SettingsViewController.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 10/7/24.
//

import UIKit

class SettingsViewController: UIViewController {
	@IBOutlet var settingsView: UIView!
	@IBOutlet weak var darkmodeSwitch: UISwitch!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		let isDarkMode = UserDefaults.standard.bool(forKey: "isDarkMode")
			darkmodeSwitch.isOn = isDarkMode
			overrideUserInterfaceStyle = isDarkMode ? .dark : .light
		
		if self.traitCollection.userInterfaceStyle != .dark {
			darkmodeSwitch.isOn = false
		}
    }
    

	@IBAction func onDarkModePressed(_ sender: UISwitch) {
		if sender.isOn {
			overrideUserInterfaceStyle = .dark
			UserDefaults.standard.set(true, forKey: "isDarkMode")
		} else {
			overrideUserInterfaceStyle = .light
			UserDefaults.standard.set(false, forKey: "isDarkMode")
		}
		
		NotificationCenter.default.post(name: Notification.Name("darkModeChanged"), object: nil)
	}
	
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
